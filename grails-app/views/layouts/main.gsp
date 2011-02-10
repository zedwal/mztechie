<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type"
          content="text/html;
                   charset=utf-8" />

    <title>mztechie</title>
    <title>
      <g:layoutTitle default="mztechie" />
    </title>

    <link rel="stylesheet"
          href="${resource(dir:'css',file:'mzstyle.css')}" />

    <link rel="stylesheet"
          href="${resource(dir:'css',file:'prettify.css')}" />

    <link rel="stylesheet"
          href="${resource(dir:'css',file:'960.css')}" />

    <link rel="shortcut icon"
          href="${resource(dir:'images',file:'favicon.ico')}"
          type="image/x-icon" />

    <g:layoutHead />

    <gui:resources
       components="['autoComplete', 'tabView', 'richEditor']" />
    <g:javascript library="application" />

    <g:javascript src="jquery.min.js" />
    <g:javascript src="jquery.validate.js" />
    <g:javascript src="prettify.js" />
    <g:javascript src="jquery.alert.js" />
    <g:javascript src="jquery.form.js" />

  </head>
  <body>
    <div class="container_12">
      <div class="grid_12 head">
        <!-- header/logo-->
        <g:render template="/header" />
      </div>

      <div class="clear:both"></div>

      <div class="grid_9 lrail">
        <!-- body contents-->
        <div class="contents">
          <div class="main">

            <g:layoutBody />

          </div> <!-- main div ends here -->
        </div> <!-- end body contents-->
      </div>

      <div class="grid_3 rrail">
        <!-- Sidebar -->
        <g:render template="/sidebar"
                  model="[tags: tags, categories: categories]"/>
      </div>

      <div class="clear:both"></div>

      <div class="grid_12 foot">
        <g:render template="/footer" />
      </div>
    </div>

    <g:javascript>
      $(document).ready(function() {
      $('pre').addClass('prettyprint');
      prettyPrint();
      });
    </g:javascript>
  </body>
</html>
