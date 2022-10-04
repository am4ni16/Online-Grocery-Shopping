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
<title>Home</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Hello Admin</h1>
        <p class="lead text-muted mb-0">Welcome to Online Grocery Shopping for Admin site.
         </p>
         <p class="lead text-muted mb-0">Click any tab to proceed. Happy working!</p>
    </div>
</section>
<%@ include file="Footer.jsp" %>
</body>
</html>