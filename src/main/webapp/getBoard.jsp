<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="board.BoardDTO" %>
<%
	
	String sessionId = (String) session.getAttribute("id");
	String sessionRole = (String) session.getAttribute("role");
	

%>
<%
	BoardDTO board = new BoardDTO();

	board = (BoardDTO) session.getAttribute("board");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 상세보기</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        center {
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        td, th {
            padding: 10px;
            border: 1px solid #ddd;
            white-space: nowrap;
        }
		
        th {
            background-color: #f39c12;
            color: #fff;
            text-align: center;
        }

        input[type="text"],
        textarea {
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
        .btn2{
        	diplay:flex;
			justify-content: space-around;
			
			      
			  }

       a, p {
        display: inline-block;
        text-decoration: none;
        margin-left:1px;
        padding: 5px 10px;
        border-radius: 7px;
        transition: background-color 0.3s ease;
    }

    /* 홈으로 링크 스타일 */
    a[href="index.html"], p a[href="index.html"] {
        background-color: #3498db;
        color: #fff;
    }

    /* 글 목록 링크 스타일 */
    a[href="getBoardList.do"], p a[href="getBoardList.do"] {
        background-color: #2ecc71;
        color: #fff;
    }

    /* 문의하기 링크 스타일 */
    a[href="customerService.html"], p a[href="customerService.html"] {
        background-color: #e74c3c;
        color: #fff;
    }

 
    a[href^="deleteBoard.do"], p a[href^="deleteBoard.do"] {
        background-color: #9b59b6;
        color: #fff;
    }
    a[href^="deleteBoard.do"]:hover, p a[href^="deleteBoard.do"]:hover {
        background-color: #8e44ad;
    }
    
    </style>
</head>
<body>
	<center>
	<h1>문의사항 상세보기</h1>
	<hr>
	<br><br>
	<form method ="post" action = "updateBoard.do">
		<input type="hidden" name= "id" value = "<%= board.getId() %>">
		
		<table border= "1" width = "700px" cellpadding="5px">
		<tr>
					<td bgcolor="orange" align="center">제목</td>
					<td><input type="text" name="title"
						value="<%= board.getTitle() %>"></td>
				</tr>
				<tr><td bgcolor="orange" align = "center"> 작성자 </td> 
				<td> <input type="text" name = "writer" value="<%= board.getWriter() %>"></td>
			</tr>
			<tr><td  bgcolor="orange" align = "center"> 내용 </td> 
				<td> <textarea name="content" rows="10" cols="70"> <%= board.getCont() %> </textarea></td>
			</tr>
			<tr><td bgcolor="orange" align = "center"> 등록일 </td> 
				<td> <%= board.getRegdate() %></td>
			</tr>
			<tr><td bgcolor="orange" align = "center"> 조회수 </td> 
				<td> <%= board.getCnt() %> </td>
			</tr>
			<tr><td colspan = "2" align = "center"> <input type="submit" value="글 수정하기">  </td> 

			</tr>
		
		</table>
		
	</form>
	<div class="btn2">
	<% if (sessionRole.equals("admin")) {%>
	<a href = "deleteBoard.do?id=<%= board.getId() %>" >
		글 삭제 
	</a> <%} %>
	
	<p /> <a href="index.html"> 홈으로 </a>
	<p /> <a href= "getBoardList.do"> 글 목록 </a>
	<p /> <a href= "customerService.html"> 문의하기 </a>
	</div>
	</center>
</body>
</html>