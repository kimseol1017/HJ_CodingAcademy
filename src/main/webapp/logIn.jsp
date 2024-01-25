<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String sessionId = (String) session.getAttribute("id");
	String sessionRole = (String) session.getAttribute("role");
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
  body {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }
  
  form {
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 5px;
    width: 300px;
  }
  
  table {
    width: 100%;
  }
  
  td {
    padding: 5px;
  }
  
  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 8px;
    margin: 5px 0;
    box-sizing: border-box;
  }
  
  input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
   width: 100%;
    padding: 10px;
    background-color: #A9E2F3;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  h1{
  	margin:0 0;
  }
  a {
    margin-top: 10px;
    display: block;
    text-align: center;
  }
  .btn1 {
    text-align: center;
    margin-top: 0px; /* Add some top margin for spacing */
  }

  .btn1 a {
    display: inline-block;
    padding: 10px 20px;
    margin: 5px;
    text-decoration: none;
    color: #fff;
    background-color: #3498db;
    border-radius: 3px;
    transition: background-color 0.3s ease; /* Apply transition for smooth hover effect */
  }

  .btn1 a:hover {
    background-color: #2980b9; /* Change background color on hover */
  }
  .loginBtn{
  	 text-align: center;
    margin-top: 0px;
  }
   .loginBtn a:hover {
   	color:#FFFFFF !important;
    background-color: #2980b9; /* Change background color on hover */
  }
  #logOutBtn, #goIndex,#goAdminIndex{
  		color: #3498db;
        text-decoration: none;
        transition: color 0.3s ease;
        display: inline-block;
        margin-right: 10px;
        padding: 10px 20px;
        border: 1px solid #3498db;
        border-radius: 5px;
  }
  
</style>
</head>
<body>
<div>
<h1> 로그인 </h1>
</div>
	<hr> 
	<p /> 
	
	<%
		if (sessionId == null ) {  //로그인 되지 않는 상태 
	
	%>
<div>
	<form method = "post" action = "login.us"> 
		<table>
			<tr> <td> ID :  </td>  
				<td> <input type="text" name = "id"> </td>
			</tr>
			<tr> <td> password :  </td>  
				<td> <input type="password" name = "password"> </td>
			</tr>
			<tr> 
				<td colspan = "2" align = "center"> <input type="submit" value="로그인"> </td>
			</tr>
			
		</table>	
	</form>
	</div>
	<div class="btn1">
	<p /> <a href="index.html"> 홈으로 </a> <a href="signIn.jsp"> 회원가입 </a>
	</div>
	<%
		} else {   // 로그인 된 상태 
	%>
	
		<%= sessionId %> 님 로그인이 성공 되었습니다. <p /> 
		당신의 권한은 <%= sessionRole %> 입니다. <p />  
	<div class="loginBtn">
		<a id="logOutBtn" href = "logout.us"> 로그 아웃 </a>
	<p /> <a id="goIndex" href="index.html"> 홈으로 </a> 
		<% if (sessionRole.equals("admin")) {%>
			<a id="goAdminIndex" href="AdminPage.jsp"> 관리자 페이지</a>
			<%} %>
	
	<%
		}
	%>
</div>
</body>
</html>