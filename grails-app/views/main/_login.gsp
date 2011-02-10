<meta name="layout" content="main" />

<style type="text/css">
  label.error { float: none; color: red; padding-left: .5em; vertical-align: top; font-size: 10px; font-style: italic;}
  p { clear: both; }
  .submit { margin-left: 12em; }
</style>
<script>
  $(document).ready(function(){
  $("#loginForm").validate();
  });
</script>

<div class="post">
  <g:form name="loginForm" controller="main" action="login">

    <p>
      Login ID <br />
      <g:textField name="uid" size="20" class="required"
                   minlength="6" maxlength="20"/>
    </p>

    <p>
      Password<br />
      <g:passwordField name="password" size="20"
                       maxlength="20" class="required"/>
    </p>

    <p>
      Personal ID<br />
      <g:passwordField name="pid" size="4"
                       class="required digits"/>
    </p>

    <p><g:submitButton name="sbtn" value="Login"/></p>

    <g:if test="${flash.message}">
      <p class="warn">
        ${flash.message}
        Hi there
      </p>
    </g:if>
  </g:form>
</div>
