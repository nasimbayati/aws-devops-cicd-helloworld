<%
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	if(pwd!=null && pwd.equals("admin123")) {
		request.getSession(true).setAttribute("uid", uid);
%>
		<jsp:forward page="home.jsp" />
<%
	} else {
%>
		<jsp:forward page="index.jsp" /> 
<%
	}
%>