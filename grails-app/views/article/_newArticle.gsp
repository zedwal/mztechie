<meta name="layout" content="main" />

<div class="content">
  <h2>Please Add Details</h2>
  <div class="entry">
    <g:form name="articleForm" controller="article" action="add">

      <p>Article Title</p>
      <p><g:textArea name="atext" rows="2" cols="51"
                     value="${article?.atext}"/></p>

      <p> Author </p>
      <p><gui:autoComplete id="author" controller="author"
                           action="authorAutoComplete" size="40"
                           value="${article?.author?.name}"/>
      </p>

      <div class="clear">&nbsp;</div>
      <p> Course </p>
      <p><gui:autoComplete id="course" controller="course"
                           action="courseAutoComplete" size="40"
                           value="${article?.course?.name}"/></p>

      <div class="clear">&nbsp;</div>
      <p> Description </p>
      <p><g:textArea name="details" rows="20" cols="60"
                     value="${article?.details}"/></p>
      <p> Tags </p>
      <p><g:textField name="tags" size="40" value="${tags}"/></p>
      <p><g:submitButton name="sbtn" value="Submit" /></p>
    </g:form>
  </div> <!-- end .entry div-->
</div> <!-- end .content div-->
