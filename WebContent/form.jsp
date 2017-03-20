<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
 <%@ include file="./commons/_head.jspf" %>
  </head>
  <body>
 <%@ include file="./commons/_navi.jspf" %>
<div class="container">
	<div class="page-header">
	<c:set var="pageName" value="회원가입" />
	<c:if test="${isUpdate}">
	<c:set var="pageName" value="회원정보수정" />
	</c:if>
		<h1>${pageName}</h1>
	</div>
	
	<c:set var="actionUrl" value="/users/create"/>
	<c:if test="${isUpdate}">
	<c:set var="actionUrl" value="/users/update" />
	</c:if>
	
	<form class="form-horizontal" action="${actionUrl}" method="post">
		<c:if test="${not empty errorMessage}">
		<div class="alert alert-danger" role="alert">
  			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
 			<span class="sr-only">Error:</span>
  				${errorMessage}
		</div>
		</c:if>
		<div class="form-group">
    		<label for="userId" class="col-sm-2 control-label">User Id</label>
    		<div class="col-sm-6">
    			<c:choose>
    			<c:when test="${isUpdate}">
    			<input type="hidden" name="userId" value="${user.userId}">
    			${user.userId}
    			</c:when>
    			<c:otherwise>
      			<input type="text" class="form-control" name="userId" placeholder="User Id" value="${user.userId}">
    			</c:otherwise>
    			</c:choose>
    		</div>
  		</div>
 		<div class="form-group">
    		<label for="Password" class="col-sm-2 control-label">Password</label>
    		<div class="col-sm-6">
     			<input type="password" class="form-control" name="password" placeholder="Password">
    		</div>
  		</div>
  		<div class="form-group">
    		<label for="Name" class="col-sm-2 control-label">Name</label>
    		<div class="col-sm-6">
     			<input type="text" class="form-control" name="name" placeholder="Name" value="${user.name}">
    		</div>
  		</div>
  		<div class="form-group">
    		<label for="Email" class="col-sm-2 control-label">Email</label>
    		<div class="col-sm-6">
     			<input type="email" class="form-control" name="email" placeholder="Email" value="${user.email}">
    		</div>
  		</div>
	 	<div class="form-group">
   			<div class="col-sm-offset-2 col-sm-10">
     			<button type="submit" class="btn btn-default">${pageName}</button>
   			</div>
  		</div>
	</form>
</div>
   <%@ include file="./commons/_footer.jspf" %>
  </body>
</html>