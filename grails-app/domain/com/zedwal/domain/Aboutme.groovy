package com.zedwal.domain
import java.util.Date as Date

class Aboutme {
  String name
  String qfication
  String jobTitle
  String industry
  String caddress
  String paddress
  String pcompany         // Company Name
  String afh             // Available for hire
  String email
  Date dob

  static constraints = {

  }

  static mapping = {
    version false
  }
}
