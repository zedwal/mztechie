package com.mz.utils

class MZUtils {

  static int MAX_LINES = 10

  static def summary ( text ) {
    def s = ""
    int counter = 0
    text.eachLine {
      if (counter ++ < MAX_LINES)
        s += it + "\n"
    }
    s += "........."
  }
}