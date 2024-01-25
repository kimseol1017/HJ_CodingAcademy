<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        td, th {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
            
        }
        tr{
        background-color: #F5A9F2;
        }
		
        th {
            background-color: #3498db;
            color: #fff;
            border-radius: 10px 10px 0 0;
        }

        tr:nth-child(1) {
            background-color: #BCF5A9;
        }
          tr:nth-child(2) {
            background-color: #BCF5A9;
        }
        
          tr:nth-child(3) {
            background-color: #BCF5A9;
        }
        

        input[type="text"] {
            width: 80%;
            padding: 8px;
            margin: 5px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2072b3;
        }

        a {
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            color: #2072b3;
        }
    </style>
</head>
<body>
<center> 
	<h1> 회원가입 </h1>
	<hr> 
	
	<form method = "post" action ="insertUsers.us"> 
		<table border="1" cellpadding = "10" cellspacing = "0">
			<tr> <td> *ID </td> 
				<td> <input type = "text" name = "id"> </td>
			</tr> 
			<tr> <td> *비밀번호 </td> 
				<td> <input type = "text" name = "password" size ="10"> </td>
			</tr>
			<tr> <td> *전화번호 </td> 
				<td> <input type = "text" name = "phone" size ="10"> </td>
			</tr>
			<tr> <td> EMAIL </td> 
				<td> <input type = "text" name = "email" size ="10"> </td>
			</tr>
			<tr> <td> 주소 </td> 
				<td> <input type = "text" name = "addr" size ="10"> </td>
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