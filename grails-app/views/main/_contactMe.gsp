<meta name="layout" content="main" />

<style type="text/css">
  label.error { float: none; color: red; padding-left: .5em; vertical-align: top; font-size: 10px; font-style: italic;}
  p { clear: both; }
  .submit { margin-left: 12em; }
</style>
<script>
  $(document).ready(function(){
  $("#contactForm").validate();
  });
</script>

<div class="post">
  <h2 class="title">
    <a>Contact Me </a>
  </h2>
  <div class="entry">
    <g:form name="contactForm" controller="main" action="email">

      <p>Purpose <br/>
        <g:select name="purpose"
                  from="['Query', 'Enhancement', 'Other']"
                  keys="['query', 'enhancement', 'other']"
                  value="query" width="40" /></p>
      <p>Name <br/>
        <g:textField name="name" size="40"
                     class="required" minlength="2"/></p>
      <p>e-mail <br/>
        <g:textField name="email" size="40"
                     class="required email"/></p>
      <p>Webpage <br/>
        <g:textField name="webpage" size="40" class="url"/></p>
      <p>Subject <br/>
        <g:textField name="subject" size="40" class="required"/></p>
      <p>Description <br/>
        <g:textArea name="desc" rows="10"
                    cols="51" class="required"/><p>
      <p><g:submitButton name="sbtn" value="Submit"/></p>
    </g:form>
  </div>
</div>
