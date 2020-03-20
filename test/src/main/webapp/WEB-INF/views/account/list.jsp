<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	</head>
	<body>
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  전희철 짱짱
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="/account/write">
					<table>
						<tr><th>사업자번호</th><th>상호명</th><th>업종</th><th>담당자</th><th>연락처</th></tr>
						
						 <c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.b_num}" /></td>
								<td>
									<a href="/account/readView?b_num=${list.b_num}"><c:out value="${list.m_name}" /></a>
								</td>
								<td><c:out value="${list.industry}" /></td>
								<td><c:out value="${list.person}" /></td>
								<td><c:out value="${list.phone}" /></td>
							</tr>
						</c:forEach> 
						
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>