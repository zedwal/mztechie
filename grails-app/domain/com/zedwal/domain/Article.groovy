package com.zedwal.domain
import java.util.Date as Date

class Article {

  String id
  String atext
  Author author
  Date published
  Date updated
  String details
  String summary
  Float rating
  Course course
  SortedSet tags

  static hasMany = [tags: ArticleTag,
                    comments: Comment]

  static constraints = {
    atext (blank: false)
    author (blank: false)
    //published ()
    details (blank: false)
  }

  static mapping = {
    id generator: 'uuid'
    details type : "text"
    summary type : 'text'
    sort 'published' : 'desc'
    version false;
  }
}
