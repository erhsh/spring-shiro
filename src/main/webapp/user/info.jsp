<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	当前登录的用户为${currUser}
	<br />
	<br />
	<a href="<%=request.getContextPath()%>/mydemo/logout" target="_blank">Logout</a>
	<shiro:hasRole name="admin">
		<p>hello</p>
	</shiro:hasRole>
	<shiro:hasPermission name="admin:manage">
		<p>world</p>
	</shiro:hasPermission>
</body>
</html>