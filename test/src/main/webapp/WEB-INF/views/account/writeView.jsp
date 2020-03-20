<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="/account/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="b_num">사업자 번호</label><input type="text" id="b_num" name="b_num" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="m_name">상호명</label><input type="text" id="m_name" name="m_name" >
								</td>
							</tr>
							<tr>
								<td>
									<label for="Industry">업종</label><input type="text" id=Industry name="Industry" />
								</td>
							<tr>
							<tr>
								<td>
									<label for="person">담당자</label><input type="text" id="person" name="person" />
								</td>
							<tr>
							<tr>
								<td>
									<label for="phone">연락처</label><input type="text" id="phone" name="phone" />
								</td>
							<tr>
								<td>						
									<button type="submit">작성</button>
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