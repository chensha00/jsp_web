<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/25
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="comon.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
<%--${test.sex}--%>

${true && false}
sfsfsfsdfsfs


<c:if test="${testOne.name ne '张三'}" var="change" scope="page">
${change}${testOne.name}<br/>
</c:if>

<c:choose>
    <c:when test="${testOne.name ne '张三'}">
        <p style="background-color: aqua">lisi</p>
    </c:when>
    <c:otherwise>
        <p style="background-color: red">${testOne.name}</p>
    </c:otherwise>
</c:choose>
<table border="1">
<c:forEach var="tt" begin="0" end="${fn:length(test)}" items="${test}" step="1" varStatus="index">
    <tr >
        <td>${index.index+1}</td>
        <td>${tt.name}</td>
    </tr>
</c:forEach>
</table>
<c:forTokens items="${'1,2,4,4'}" delims="," var="aa">
    ${aa}
</c:forTokens>


<c:set var="testset" value="1234" scope="page"/>
${testset}
<c:out value="${testset}"/>
<c:set var="test" value="${testset}" scope="page"></c:set>
<c:out value="${test}"></c:out>
<c:remove var="testset" scope="page"/>



<c:set var="balance" value="120000.2309" />
<p>格式化数字 (1): <fmt:formatNumber value="${balance}"
                                type="currency"/></p>
<p>格式化数字 (2): <fmt:formatNumber type="number"
                                value="${balance}" /></p>
<p>格式化数字 (3): <fmt:formatNumber type="number"
                                value="${balance}" /></p>
<p>格式化数字 (4): <fmt:formatNumber type="number"
                                groupingUsed="false" value="${balance}" /></p>
<p>格式化数字 (5): <fmt:formatNumber type="percent"
                                value="${balance}" /></p>
<p>格式化数字 (6): <fmt:formatNumber type="percent"
                                value="${balance}" /></p>
<p>格式化数字 (7): <fmt:formatNumber type="percent"
                                value="${balance}" /></p>
<p>格式化数字 (8): <fmt:formatNumber type="number"
                                pattern="￥###%" value="${balance}" /></p>
<p>美元 :
    <fmt:setLocale value="en_US"/>
    <fmt:formatNumber value="${balance}" type="currency"/></p>

<c:set var="now" value="<%=new java.util.Date()%>" />

<p>日期格式化 (1): <fmt:formatDate type="time"
                              value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
<p>日期格式化 (2): <fmt:formatDate type="date"
                              value="${now}" /></p>
<p>日期格式化 (3): <fmt:formatDate type="both"
                              value="${now}" /></p>
<p>日期格式化 (4): <fmt:formatDate type="both"
                              dateStyle="short" timeStyle="short"
                              value="${now}" /></p>
<p>日期格式化 (5): <fmt:formatDate type="both"
                              dateStyle="medium" timeStyle="medium"
                              value="${now}" /></p>
<p>日期格式化 (6): <fmt:formatDate type="both"
                              dateStyle="long" timeStyle="long"
                              value="${now}" /></p>
<p>日期格式化 (7): <fmt:formatDate pattern="yyyy-MM-dd"
                              value="${now}" /></p>


</body>
</html>
