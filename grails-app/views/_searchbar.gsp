<meta name="layout" cocntent="main" />

<!-- search bar -->
<div class="topbar">
  <div class="top_left">
    Search:&nbsp;
    <input type="text" name="stext" class="sbox"/>
  </div>

  <div class="top_right">
    <g:if test="${session.user}">
      Welcome <b>${session.user.name}</b>
      <g:link controller="main" action="logout" >
        Logout
      </g:link>
    </g:if>
    <g:else>
      <g:form name="loginForm" controller="main"
              action="authenticate">
        ID <g:textField name="userid" />
        PASSWORD <g:passwordField name="password" />
        <g:submitButton name="go" value="go" />
      </g:form>
    </g:else>
  </div>
</div> <!-- end searchbar -->
