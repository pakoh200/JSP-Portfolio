<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
   <%@ include file="./commons/_head.jspf" %>
  </head>
  <%@ include file="./commons/_navi.jspf" %>
<div class="container">
	<div class="page-header">
		<h1>로그인</h1>
	</div>
	<form class="form-horizontal" action="/users/login" method="post">
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
      			<input type="text" class="form-control" name="userId" placeholder="User Id">
    		</div>
  		</div>
 		<div class="form-group">
    		<label for="Password" class="col-sm-2 control-label">Password</label>
    		<div class="col-sm-6">
     			<input type="password" class="form-control" name="password" placeholder="Password">
    		</div>
  		</div>
	 	<div class="form-group">
   			<div class="col-sm-offset-2 col-sm-10">
     			<button type="submit" class="btn btn-default">로그인</button>
   			</div>
  		</div>
	</form>
</div>
   <%@ include file="./commons/_footer.jspf" %>
  </body>
</html>