<div>

  <div class="side_box">
    <div class="side_header">
      MZ Control P.
    </div>

    <div class="side_content">

      <g:render template="/main/login" />

    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->

  <div class="side_box">
    <div class="side_header">
      Rss Feed
    </div>

    <div class="side_content">
      <g:textField type="submit" name="rss" />
    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->

  <div class="side_box">
    <div class="side_header">
      About
    </div>

    <div class="side_content">
      The daily quest sharing. I post here if find
      somthing valuable during my serach on Big G and my
      personal experiences.
    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->

  <div class="side_box">
    <div class="side_header">
      Categories
    </div>

    <div class="side_content">
      <tc:tagCloud
         tags="${categories}" controller="article"
         action="category"
         color="${[start: '#66CCFF', end: '#66CCFF']}"
         size="${[start: 10, end: 20, unit: 'px']}"/>


    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->

  <div class="side_box">
    <div class="side_header">
      Tags
    </div>
    <div class="side_content">
      <tc:tagCloud tags="${tags}" controller="article" action="tag"
                   color="${[start: '#66CCFF', end: '#66CCFF']}"
                   size="${[start: 10, end: 20, unit: 'px']}"/>

    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->

  <div class="side_box">
    <div class="side_header">
      Recent comments
    </div>

    <div class="side_content">

      <p>
        Nice post ...
      </p>


      <p>
        What the fuck is this
      </p>

      <p>
        Welcome to grails world
      </p>

      <p>
        Groovy is fantastic
      </p>


    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->


  <div class="side_box">
    <div class="side_header">
      MZ Archive
    </div>

    <div class="side_content">

      <p> 2010 <a href="#" > (20) </a></p>

      <p> 2011 <a href="#" > (44) </a></p>

      <p> 2012 <a href="#" > (46) </a></p>

      <p> 2013 <a href="#" > (21) </a></p>

      <p> 2014 <a href="#" > (67) </a></p>


    </div> <!-- side box content ends here-->
  </div> <!-- side box ends here-->
</div> <!-- sidebar ends here-->
