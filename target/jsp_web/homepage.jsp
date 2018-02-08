<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: caoxin
  Date: 2018/1/28
  Time: 19:18
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>E-COMMERCE HOMEPAGE</title>
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
    <%--<link href="/css/stylesheet.css" rel="stylesheet" type="text/css"/>--%>
</head>
<body>
<%--设置页面使用参数--%>
<%
    Date date=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<div id="head-banner">
    <div id="account-info" class="banner">
        <span >${sessionScope.username},欢迎登录!</span>
        <span id="cur-time">当前时间为<%=sdf.format(date)%></span>
    </div>
    <div id="forward" class="banner">
        <a id="buy"  href="goods_shop.jsp">我要购买</a>
        <a id="log-out" href="log_in.jsp" target="_self"> 退出登录 </a>
    </div>
</div>
<%--功能菜单--%>
<div id="operate-part">
    <div id="menu" class="show">
        <form  method="post">
            <ul id="direction">
                <c:choose>
                    <c:when test="${sessionScope.sellerid!=0}">
                        <li><button id="shop" class="menu" type="button" name="shop" value="shop" >我的店铺</button></li>
                        <li><button id="sell-buy-orders" class="menu" type="button" name="buy-orders" value="buy-orders">我的购买订单</button></li>
                        <li><button id="sell-orders" class="menu" type="button" name="sell-orders" value="sell-orders" >我的出售订单</button></li>
                    </c:when>
                    <c:otherwise>
                        <li><button  id="buy-orders" class="menu" type="button" name="buy-orders" value="buy-orders" >我的购买订单</button></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </form>
    </div>
    <%--展示信息区域--%>
    <div id="display" class="show"></div>
</div>
<script type="text/javascript">

//    console.log($("#display"));

        //    我的店铺跳转请求
        $("#shop").click(function myShop(id){
            $.ajax({
                type : "POST",
                url : "${request.getContextPath()}/HomepageServlet.htm",
                dataType : "text",
                success : function(data) {
                    $("#display").html(data);
                },
                error : function(e) {
                    console.log(e);
                }
            })
        });
//    我的购买订单跳转请求
        $("#sell-buy-orders").click(function myBuy(){
            $.ajax({
                type : "POST",
                url : "${request.getContextPath()}/HomepageServlet.htm",
                dataType : "text",
                success : function(data) {
                    $("#display").html(data);
                },
                error : function(e) {
                    console.log(e);
                }
            });
        })

        $("buy-orders").click(function myBuy(){
            $.ajax({
                type : "POST",
                url : "${request.getContextPath()}/HomepageServlet.htm",
                dataType : "text",
                success : function(data) {
                    $("#display").html(data);
                },
                error : function(e) {
                    console.log(e);
                }
            });
        })
//    我的出售订单跳转请求
        $("#sell-orders").click(function mySell(){
            $.ajax({
                type : "POST",
                url : "${request.getContextPath()}/HomepageServlet.htm",
                dataType : "text",
                success : function(data) {
                    $("#display").html(data);
                },
                error : function(e) {
                    console.log(e);
                }
            });
        });


</script>
</body>
</html>
