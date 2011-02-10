package com.zedwal.controllers

class AboutmeController {

  def index = {
    //print 'passing through about me index action .......'
  }

  def me={
    render(template: "aboutMe")
  }
}
