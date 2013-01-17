<%@ page import="com.day.cq5.myapp.HelloPerson" %>
<%@include file="/libs/wcm/global.jsp"%>
<%
HelloPerson hello = new HelloPerson(currentPage);
String msg = hello.getHelloMessage();
%>
Hello, <%= msg %>.</br></br>
This is the contenpage component.