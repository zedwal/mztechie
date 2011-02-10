package com.zedwal.controllers
import com.zedwal.domain.Article
import java.util.Date as Date

class CommentController {

  def index = { }

  def newcomment = {
    def article = Article.get(params.articleid)
    article.addToComments(comment: params.comment,
                          name: params.name,
                          email: params.email,
                          webpage: params.webpage,
                          date: new Date())

    if (!article.hasErrors() && article.save()){
      redirect (controller: "article", action: "show",
                fragment: 'comments',
                params: [id: article?.atext?.replaceAll(' ', '_'),
                         year: article?.published?.year + 1900,
                         month: article?.published?.month,
                         date: article?.published?.date])
    } else {
      render "Sorry, There is an error in saving comment .... <br/>If you could, pls report me. Thanks"
    }
  }
}
