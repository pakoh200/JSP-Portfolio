<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="./commons/_head.jspf" %>
</head>
<body>
<%@ include file="./commons/_navi.jspf" %>

<div class="row">
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="example.jpg" alt="...">
      <div class="caption">
        <h3>JSP 회원 CRUD github</h3>
        <p>github에 올렸습니다.</p>
        <p><a href="/form.html" class="btn btn-default" role="button">구경하기</a> </p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="..." alt="...">
      <div class="caption">
        <h3>Spring 회원 CRUD</h3>
        <p>...</p>
        <p><a href="/login.html" class="btn btn-default" role="button">구경하기</a> </p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="..." alt="...">
      <div class="caption">
        <h3>Spring-boot 회원 CRUD</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-default" role="button">구경하기</a> </p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="..." alt="...">
      <div class="caption">
        <h3>Mybatis 게시판</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-default" role="button">구경하기</a> </p>
      </div>
    </div>
  </div>
</div>


	<%@ include file="./commons/_footer.jspf" %>
</body>
</html>