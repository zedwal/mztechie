package com.zedwal.controllers

class ArchiveController {

  def index = { render (template: "adminControls") }

  // To show the list
  def list = {
    def criteria = Archives.createCriteria()
    params.max = Math.min(params.max ? params.int('max') : 10, 100)
    def archives = criteria.list(max: params.max,
                                 offset: params.offset)
    render (template: "archivesList",
            model: [archives: archives])

  }

}
