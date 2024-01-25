<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String sessionRole = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>관리자 페이지</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 20px;
      text-align: center;
    }

    h2 {
      color: #333;
    }

    a {
      text-decoration: none;
      display: inline-block;
      padding: 10px 20px;
      margin: 5px;
      color: #fff;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #3498db;
    }

    a#main {
      background-color: #2ecc71;
    }

    a#boardList {
      background-color: #e74c3c;
    }

    a#writePost {
      background-color: #f39c12;
    }

    a#userList {
      background-color: #9b59b6;
    }

    a#registerUser {
      background-color: #34495e;
    }

    a#registerAdmin {
      background-color: #1abc9c;
    }

    a#login {
      background-color: #3498db;
    }
  </style>
</head>
<body>
  <h2>관리자 페이지</h2>
  <hr>
  <a id="main" href="index.html">메인페이지</a>
  <p />
  <a id="boardList" href="getBoardList.do">문의사항 리스트 페이지</a>
  <p />
  <a id="writePost" href="customerService.html">문의사항 글쓰기</a>
  <p />
  <a id="userList" href="getUsersList.us">회원 리스트 페이지</a>
  <p />
  <a id="registerUser" href="signIn.jsp">회원 등록</a>
  <p />
  <a id="registerAdmin" href="AdminSignIn.jsp">관리자 등록</a>
  <p />
  <a id="login" href="logIn.jsp">로그인 페이지</a>
  <p />
</body>
</html>
