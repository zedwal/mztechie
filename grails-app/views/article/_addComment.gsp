<meta name="layout" content="main" />
<style type="text/css">
  label.error { float: none; color: red; padding-left: .5em; vertical-align: top; font-size: 10px; font-style: italic;}
  p { clear: both; }
  .submit { margin-left: 12em; }
</style>
<script>
  $(document).ready(function(){
  $("#commentf").validate();
  });
</script>



<div class="post">
  <h2 class="title">Add comment</h2>

  <div class="entry">
    <g:form id="commentf" name="commentf" controller="comment"
            action="newcomment">
      <g:hiddenField name="articleid" value="${articleid}"/>
      <p>Name <br/>
        <g:textField name="name" style="width:90%;"
                     class="required" minlength="2"/></p>
      <p> e-mail
        <em style="color: green;">(will never be published)</em><br/>
        <g:textField
           name="email" size="40"
           class="required email" style="width:90%;"/></p>

      <p> Webpage <br/>
        <g:textField name="webpage" size="40"
                     class="url" style="width:90%;"/></p>
      <p> Comment
        <em style="color: green;">(markdown highlighting supported)</em>
        <br/>
        <g:textArea name="comment" rows="10" style="width:90%;"
                    cols="51" class="required"/></p>
      <p><g:submitButton name="sbtn" value="Add Comment"/></p>
    </g:form>
  </div>
</div>
