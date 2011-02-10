package com.zedwal.domain

class ArticleTag implements Comparable {

  String name
  static belongsTo = [article: Article]

  static constraints = {
    name (nullable: true)
    article (nullable: true)
  }

  int compareTo ( obj ) {
    name.compareTo ( obj.name )
  }
  static mapping = {
    version false
    sort name : 'asc'
  }


}
