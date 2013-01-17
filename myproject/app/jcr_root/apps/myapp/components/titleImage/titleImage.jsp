<%@include file="/libs/foundation/global.jsp"%><%
<%@ page import="org.apache.commons.lang.StringEscapeUtils,com.day.cq.commons.Doctype,org.apache.sling.api.resource.ResourceUtil" %>
<%
// first calculate the correct title - look for our sources if not set in paragraph
String title = properties.get("jcr:title", currentPage.getTitle());
// use image title if type is "small" but not if diff should be displayed
if (properties.get("type", "small").equals("small")) {

	String suffix = currentDesign.equals(resourceDesign) ? "" :"/" + currentDesign.getId();
// add mod timestamp to avoid client-side caching of updated images

long tstamp = properties.get("jcr:lastModified", properties.get("jcr:created", System.currentTimeMillis()));
suffix += "/" + tstamp + ".png";
String xs = Doctype.isXHTML(request) ? "/" : "";
%>
<img src=" <%= resource.getPath() %>.title.png <%= suffix %>" alt="	<%= StringEscapeUtils.escapeXml(title) %>"<%=xs%>>
<%
// large title
} else {
%><h1><%= StringEscapeUtils.escapeHtml(title) %></h1>
<%
}
%>