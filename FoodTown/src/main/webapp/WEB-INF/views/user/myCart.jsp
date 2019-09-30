<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!-- Title-->
    <title>Food | MyCart</title>
    <!-- Stylesheets-->    
  	<c:import url="/user/css"></c:import>
</head>

<body class="wow-animation">  
  <div id="page-loader">
    <div class="cssload-container">
      <div class="cssload-speeding-wheel"></div>
    </div>
  </div>
  <div class="site" id="page">

  <!-- Header-->
  <c:import url="/user/header"></c:import>
 
 
 <section class="jl-page-title" style="background-image:url('<s:url value="/resources/site/img/page-bg.jpg"></s:url>');">
  <div class="container">
  <div class="row">
    <div class="col-md-12"><h1>My Shopping Cart</h1></div>
  </div>
  </div>
</section>
 
<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
  <div class="col-md-12">
      
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
            <th class="product-thumbnail text-center">Image</th>
            <th class="product-name text-center">Product</th>
            <th class="product-name text-center">Price</th>
            <th class="product-name text-center">Status</th>
         </tr>
      </thead>
      <tbody>
	  <c:if test="${ not empty crlist }">
		<c:forEach items="${crlist}"  var="item">
         <tr class="cart_item">
            <td class="product-thumbnail text-center"><img src='<s:url value="${item.product.pphoto}"></s:url>' width="100" alt=""></td>
            <td class="product-name text-center">${item.product.ptitle}</td>
            <td class="product-name text-center"><span class="Price-amount">${item.product.pprice}</span></td>
            <td class="product-name text-center">${item.order.ostatus}</td>
          </tr>
        </c:forEach>
	  </c:if>          
      </tbody>
   </table>


   </div>
   </div>
   </div>
</section>

  <!-- Footer-->
  <c:import url="/user/footer"></c:import>

  </div>
  <div id="go-top"><i class="ti-angle-up"></i></div>
  
  <!-- Javascript-->
  <c:import url="/user/js"></c:import>      
</body>
</html>