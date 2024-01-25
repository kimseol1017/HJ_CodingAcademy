<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%@ page import="java.util.*" %>
 <%@ page import="user.UserDTO" %>
 
 <%
 
 List<UserDTO> userList = new ArrayList<>();
 
 try{
	 
 	userList = (List<UserDTO>) session.getAttribute("userList");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        center {
            text-align: center;
            margin-top: 30px;
        }

        h1 {
            color: #333;
        }

        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
            margin-bottom: 50px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #3498db;
            color: #fff;
            border-radius: 10px 10px 0 0;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #2072b3;
        }

        a:visited {
            color: #8258fa;
        }
    </style>
</head>
<body>
	<center>
	<h1> 회원 리스트 </h1>
	<hr>
	
	<table border="1" width="700px">
	<tr>
		<th bgcolor="blue" width=200px">ID</th>
		<th bgcolor="blue" width=350px">PASSWORD</th>
		<th bgcolor="blue" width=200px">EMAIL</th>
		<th bgcolor="blue" width=200px">주소</th>
		<th bgcolor="blue" width=150px">등록일</th>
	</tr>
	
	<%
	for (UserDTO k : userList){
	%>
	
	<tr>
		<td align="center"><%=k.getId() %></td>
		</td>
		
		
		<td><%=k.getPassword() %></td>
		<td><%=k.getEmail() %></td>
		<td><%=k.getAddr() %></td>
		<td><%=k.getRegdate() %></td>
	</tr>
	
	<%
	}
	
	session.removeAttribute("userList");
 }catch (Exception e){
	 response.sendRedirect("getUsersList.us");
 }
	%>
		
	</table>
	
	<br> <a href="index.html"> 홈으로 </a>
	</center>
</body>
</html>