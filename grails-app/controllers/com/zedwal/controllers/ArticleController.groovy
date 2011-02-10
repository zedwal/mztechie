package com.zedwal.controllers
import com.zedwal.domain.Article
import com.zedwal.domain.Author
import com.zedwal.domain.Course
import java.util.Date as Date
import com.mz.utils.MZUtils

class ArticleController {

  def cloudService
  def mailService // injecting mail service

  def beforeInterceptor = {
    log.info "Tracing action ${actionUri}"
  }

  def clouds ( ) {
    [categories: cloudService.catCloud( ),
     tags: cloudService.tagCloud( )]
  }

  def index = {
    // Popular search text cloud
    def psearches

    // Fetch recent 7 comments only
    def recentComments

    params.max = params.max?: 5
    // Month wise clusters
    def criteria = Article.createCriteria()
    def articles = criteria.list(params) { }

    render (view: "articles",
            model: [articles : articles,
                    totalCount: articles.totalCount] + clouds( ))
  }

  def indexa = {
    render (template: "newArticle")
  }

  def add = {

    def article = new Article()
    article.atext = params.atext

    /* Check if course exists, then add reference otherwise
       save new course and then supply id of course.
    */

    def authorExists = Author.read(params.author_id)
    article.author = authorExists?: new Author(
      name: params.author, country: "N.A.",
      qfication: "N.A.").save( flush: true )

    article.published = new Date( )
    article.updated = new Date( )
    article.details = params.details
    article.summary = MZUtils.summary( params.details )

    /* Check if course exists, then add reference otherwise
       save new course and then supply id of course. */

    def courseExists = Course.read( params.course_id )
    article.course = courseExists?:
      new Course( name: params.course ).save( flush: true )

    article.rating = 0

    // Tokenize tags comma or space separated
    def tagList = params.tags?.tokenize( ' ,' )

    tagList.each{
      article.addToTags( name: it )
    }

    if( !article.hasErrors( ) && article.save( flush: true ) ){
      redirect (
        controller: "article", action: "show",
        params: [id: article?.atext?.replaceAll(' ', '_'),
                 year: article?.published?.year + 1900,
                 month: mz.padVal(val: article?.published?.month),
                 date: mz.padVal(val: article?.published?.date)])
    } else {
      article.errors.each { println it }
    }
  }

  // To show the selected post
  def show = {
    def article =
      Article.findByAtext(params.id?.replaceAll('_', ' '))
    if (params.id && article){
      render (view: "detailedArticle",
              model: [article: article] + clouds( ))
    } else {
      flash.message = "Article not found."
      redirect (action: "index")
    }
  }

  def edit = {
    def article =
      Article.findByAtext(params?.id?.replaceAll('_', ' '))
    def tags = [ ]
    article.tags.each { tags << it?.name }

    tags = tags.join(' ')

    render (view: "editArticle",
            model: [article: article,
                    articleTags: tags] + clouds ( ))
  }

  def update = {
    def article = Article.get(params.aid)
    article.atext = params.atext

    /* Check if author exists, then add reference otherwise
         save new course and then supply id of author.*/

    def authorExists = Author.read(params.author_id)
    article.author = authorExists?:new Author(
      name: params.author, country: "N.A.",
      qfication: "N.A.").save( flush: true )


    article.updated = new Date()
    article.details = params.details
    article.summary = MZUtils.summary( params.details )

    /* Check if course exists, then add reference otherwise
         save new course and then supply id of course.*/
    def courseExists = Course.read(params.course_id)
    article.course = courseExists?:new Course(
      name: params.course).save( flush: true )

    article.rating = 0

    // Remove previous tags of article
    // markdown grails text-editor
    def tags = article?.tags?.collect{it}

    // Removing the previues tags if any
    (0..<tags.size()).each {
      article.removeFromTags(tags[it])
    }

    // Tokenize tags comma or space separated
    def tagList = params.tags?.tokenize(' ,')

    // Adding new tags
    tagList.each {
      article.addToTags(name: it)
    }

    if(!article.hasErrors() && article.save( flush: true )){
      redirect (controller: "article", action: "show",
                params: [id: article?.atext?.replaceAll(' ', '_'),
                         year: article?.published?.year + 1900,
                         month: article?.published?.month,
                         date: article?.published?.date])
    } else {
      render article.errors.each { println it }
    }
  }

  def tag = {
    def criteria = Article.createCriteria()
    params.max = params.max?: 10
    def articles = criteria.list(params) {
      tags {
        eq "name", "${params.id}", [ignoreCase: true]
      }
    }

    /*    articles.each {
      it .tags.each {n -> println n}
    }
*/
    render (view: "articles",
            model: [articles: articles] + clouds( ))
  }

  def category = {
    def criteria = Article.createCriteria()
    params.max = params.max?: 10
    def articles = criteria.list(params) {
      course {
        eq "name", "${params.id}", [ignoreCase: true]
      }
    }

    render (view: "articles",
            model: [articles: articles] + clouds( ))
  }
}