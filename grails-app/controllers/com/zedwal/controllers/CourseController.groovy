package com.zedwal.controllers
import grails.converters.JSON
import com.zedwal.domain.Course

class CourseController {

  def index = { }

  def courseAutoComplete = {

    def courses = Course.findAllByNameLike("%${params.query}%")
    courses =
      courses.collect{
        [id: it.id, name: it.name]
      }

    def jsonCourses = [result: courses]

    render jsonCourses as JSON
  }


}
