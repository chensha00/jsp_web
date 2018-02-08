<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" errorPage="error.jsp" %>
<%@ include file="comon.jsp"%>

<html>
<head >
    <title></title>
</head>
<body>
<c:if test="true">
    <input type="text" />
</c:if>
<c:set var="testset" value="1234" scope="page"/>
<c:set var="test" value="3423" scope="page"></c:set>
<c:out value="${test}" default="1"></c:out>
<%

    String str="teststr";
//    int testInt=Integer.parseInt(str);
    Date date=new Date();
//    request.getCharacterEncoding()
    request.setAttribute("str","request");
    String testStr= (String) request.getAttribute("str");
    Enumeration<String> enStr=request.getAttributeNames();
    Cookie[] cookies=request.getCookies();
    for (Cookie cookie:cookies){

    }


//    enStr.
    out.print(testStr);

//    PrintWriter printWriter=response.getWriter();
    String initStr=application.getInitParameter("test");
//    File file=new File("/test");
//    file.createNewFile();
//    InputStream in=new FileInputStream(file);
//    file.isFile();


//    printWriter.print(initStr);
//    printWriter.flush();
//    printWriter.close();
//    application.

//    response
    for (int i = 0; i <10; i++) {

%>
    <p><%=i%></p>
<%
    }
%>
<%=1+1%>

${str}

<a href="${basePath}/test/test.htm?name=test&sex=1">访问后台</a>
<form method="post" action="${basePath}/test/test.htm">

<button type="submit"> 提交</button>
</form>

</body>
</html>