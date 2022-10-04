<%@page import="onlinegroceryshopping.bean.CategoryBean"%>
<%@page import="onlinegroceryshopping.model.CategoryModel"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="onlinegroceryshopping.bean.ProductBean"%>
<%@page import="onlinegroceryshopping.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to KAD-LI</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">WELCOME TO KAD-LI ENTERPRISE</h1>
        <p class="lead text-muted mb-0">Enjoy your online groceries shopping here!</p>
         <p class="lead text-muted mb-0"> You can search any products by using search tool feature.</p>
          <p class="lead text-muted mb-0"> You can also browse any products by its category.</p>
           <p class="lead text-muted mb-0"> We will deliver your products into your doorstep.</p>
           <p class="lead text-muted mb-0"> Your order invoice will updated on history page.</p>
            <p class="lead text-muted mb-0"> You can contact us through contact page if you have any inquiries.</p>
         <p class="lead text-muted mb-0"> We are still on progress to improve this website to give you the better services.</p>
         <p class="lead text-muted mb-0"> THANK YOU</p>
    </div>
</section>
<%@ include file="Footer.jsp" %>
</body>
</html>