package com.zedwal.domain

class User {

  String userId
  String fname
  String lname
  String role
  String password
  Integer personalID

  static constraints = {
    userId (blank: false)
    password (blank: false)

  }

  static mapping = {
    version false
  }

  def getName ( ) {
    fname + " " + lname
  }
}
