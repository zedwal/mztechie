package com.zedwal.domain

class Author {

  String name
  String country
  String qfication


  static constraints = {
    name (blank: false)
    country (nullable: true)
    qfication(nullable: true)
  }

  static mapping = {
    version false
  }
}
