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
    <title>Food | Product</title>
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
 
 
<section class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
    <div class="container">
    	<c:if test="${ not empty error }">
      		<h5 class="text-center">${ error }</h5>
      	</c:if>
      	
      	<c:if test="${not empty pr}">   
        <div class="row product-details">
            <div class="image-column col-md-6 col-sm-6">
            	<!-- '<s:url value="../resources/site/img/burger1.jpg"></s:url>' -->
                <figure class="image-box " style="max-width:300px;"><img src='<s:url value="../${pr.pphoto}"></s:url>' alt=""/></figure>
            </div>
            <div class="info-column col-md-6 col-sm-6">
                <div class="details-header">
                    <h4>${pr.ptitle}</h4>
                    <div class="item-price">${pr.pprice}<!--<del>$15</del>--></div>
                </div>
                <div class="text">${pr.pdesc}</div>
                <div class="other-options clearfix">
                    <a href='<s:url value="/order/${pr.pid}"></s:url>' type="button" class="btn"><span class="btn-title">Add To Cart</span></a>
                </div>
            </div>
        </div>
        </c:if>

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