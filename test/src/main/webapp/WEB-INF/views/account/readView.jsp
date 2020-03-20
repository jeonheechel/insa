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
				<h1> 거래처 정보</h1>
			</header>
			<hr />
			 
			<nav>
			
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="b_num">사업자</label><input type="text" id="b_num" name="b_num" value="${read.b_num}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="m_name">상호명</label><input type="text" id="m_name" name="m_name" value="${read.m_name}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="Industry">업종</label><textarea id="Industry" name="Industry"><c:out value="${read.industry}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="person">담당자</label><input type="text" id="person" name="person" value="${read.person}" />
								</td>
							</tr>
							<tr>
								<td>
									<label for="phone">연락처</label><input type="text" id="phone" name="phone" value="${read.phone}" />
								</td>
							</tr>		
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>