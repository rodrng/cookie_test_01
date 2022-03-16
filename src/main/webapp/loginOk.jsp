<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		
		if(memberId.equals("abc") && memberPw.equals("12345"))//로그인 성공 체크
		{
			//session.setAttribute("m_id", memberId);
			//session.setAttribute("m_pw", memberPw);
			Cookie cookie1 = new Cookie("m_id", memberId);
			Cookie cookie2 = new Cookie("m_pw", memberPw);
			cookie1.setMaxAge(60);//쿠키의 유효시간
			cookie2.setMaxAge(60);//쿠키의 유효시간
			response.addCookie(cookie1);			
			response.addCookie(cookie2);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");			
		}	
	
	%>
</body>
</html>