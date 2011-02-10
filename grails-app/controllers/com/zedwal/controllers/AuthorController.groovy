package com.zedwal.controllers
import grails.converters.JSON
import com.zedwal.domain.Author

class AuthorController {

  def index = { }

  def authorAutoComplete = {

    def authors = Author.findAllByNameLike("${params.query}%")
    authors = authors.collect { [ id: it.id, name: it.name ] }
    def jsonAuthors = [ result: authors ]

    render jsonAuthors as JSON

  }
}
