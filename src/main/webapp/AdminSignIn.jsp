<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원가입</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 20px;
      text-align: center;
    }

    h1 {
      color: #333;
    }

    form {
      margin-top: 20px;
    }

    table {
      width: 50%;
      margin: 0 auto;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      border: 1px solid #ddd;
      text-align: left;
    }

    th {
      background-color: #3498db;
      color: #fff;
    }

    td {
      background-color: #ecf0f1;
    }

    input[type="text"] {
      width: 100%;
      padding: 8px;
      margin: 5px 0;
      box-sizing: border-box;
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #3498db;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #2980b9;
    }

    a {
      display: block;
      margin-top: 20px;
      text-decoration: none;
      color: #333;
    }
  </style>
</head>
<body>
<center> 
	<h1> 관리자 등록 </h1>
	<hr> 
	
	<form method = "post" action ="insertAUsers.us"> 
		<table border="1" cellpadding = "10" cellspacing = "0">
			<tr> <td bgcolor="blue"> *ID </td> 
				<td> <input type = "text" name = "id"> </td>
			</tr> 
			<tr> <td  bgcolor="blue"> *비밀번호 </td> 
				<td> <input type = "text" name = "password" size ="10"> </td>
			</tr>
			<tr> <td  bgcolor="blue"> *전화번호 </td> 
				<td> <input type = "text" name = "phone" size ="10"> </td>
			</tr>
			<tr> <td  bgcolor="blue"> EMAIL </td> 
				<td> <input type = "text" name = "email" size ="10"> </td>
			</tr>
			<tr> <td  bgcolor="blue"> 주소 </td> 
				<td> <input type = "text" name = "addr" size ="10"> </td>
			</tr>
			<tr> <td  bgcolor="blue"> 권한확인 </td> 
				<td> <input type = "text" name = "role" placeholder="admin 을 입력하여 가입확인" size ="20"> </td>
			</tr>
			<tr> <td colspan ="2" align = "center">
					<input type="submit" value="등록"> 
			 	</td> 
				
			</tr>
		
		</table>
	</form>
	
		<br> <a href="index.html"> 홈으로 </a>

	
	
	
	</center>
</body>
</html>