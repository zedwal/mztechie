package com.zedwal.domain
import java.util.Date as Date
class Comment {

  String comment
  String name
  String email
  String webpage
  Date date
  static belongsTo = [article : Article]

  static constraints = {
    email (nullable: true)
    webpage (nullable: true)
  }

  static mapping = {
    comment type: "text"
    sort 'date' : 'desc'
    version false
  }
}
