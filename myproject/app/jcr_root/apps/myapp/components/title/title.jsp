<%@ page import="com.day.cq5.myapp.TitleClass"%>
<%@include file="/libs/foundation/global.jsp"%>
<h2><%
TitleClass pageTitle = new TitleClass();
String title = pageTitle.getTitle(currentPage);
%><%=title %></h2>