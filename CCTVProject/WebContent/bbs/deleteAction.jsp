<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.list.bbs.BBSDAO" %>
<%@ page import="com.list.bbs.BBS" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WherEye</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null)	{
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null)	{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 되어 있어야합니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");			
		}
		
		
		int bbsID = 0;
		if (request.getParameter("bbsID") != null)	{
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0)	{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");		
		}
		BBS bbs = new BBSDAO().getBbs(bbsID);
		if (!userID.equals(bbs.getUserID()))	{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}	else	{
			BBSDAO bbsDAO = new BBSDAO();
			int result = bbsDAO.delete(bbsID);
			if(result == -1)	{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 삭제에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else	{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'bbs.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>