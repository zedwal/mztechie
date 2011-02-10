package com.zedwal.domain

class Course {

  String name
  String description

  static constraints = {
    name (blank: false)
    description (nullable: true)
  }

  static mapping = {
    version false
  }
}
