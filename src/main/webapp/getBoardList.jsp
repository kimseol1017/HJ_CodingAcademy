<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%@ page import="java.util.*" %>
 <%@ page import="board.BoardDTO" %>
 
 <%
 
 List<BoardDTO> boardList = new ArrayList<>();
 
 try{
	 
 	boardList = (List<BoardDTO>) session.getAttribute("boardList");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 목록</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
    }

    center {
        text-align: center;
    }

    h1 {
        color: #333;
    }

    table {
        width: 70%;
        margin-top: 20px;
        margin: 20px auto; 
        border-collapse: collapse;
        margin-bottom: 50px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: #3498db;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    

     .btn3>a {
        color: #3498db;
        text-decoration: none;
        transition: color 0.3s ease;
        display: inline-block;
        margin-right: 10px;
        padding: 10px 20px;
        border: 1px solid #3498db;
        border-radius: 5px;
    }

    .btn3>a:hover {
        color: #fff;
        background-color: #2072b3;
    }

    a:visited {
    color: #8258fa; /* 방문한 링크의 색상 */
    text-decoration: none; /* 밑줄 제거 */
}


    .btn3 {
        text-align: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
	<center>
	<h1> 문의사항 목록 </h1>
	<hr>
	
	<table border="1" width="700px">
	<tr>
		<th bgcolor="blue" width=100px">번호</th>
		<th bgcolor="blue" width=200px">제목</th>
		<th bgcolor="blue" width=150px">작성자</th>
		<th bgcolor="blue" width=150px">등록일</th>
		<th bgcolor="blue" width=100px">조회수</th>
	
	</tr>
	
	<%
	for (BoardDTO k : boardList){
	%>
	
	<tr>
		<td align="center"><%=k.getId() %></td>
		
		<td><a href="getBoard.do?id=<%=k.getId() %>"> <%=k.getTitle() %>
		</a></td>
		
		<td><%=k.getWriter() %></td>
		<td><%=k.getRegdate() %></td>
		<td><%=k.getCnt() %></td>
	</tr>
	
	<%
	}
	
	session.removeAttribute("boardList");
 }catch (Exception e){
	 response.sendRedirect("getBoardList.do");
 }
	%>
		
	</table>
	
	<br>
	<div class="btn3">
	 <a href="index.html"> 홈으로 </a>
	<a href="customerService.html"> 문의하기 </a>
	</div>
	</center>
</body>
</html>