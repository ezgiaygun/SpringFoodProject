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
    <title>Food | Login</title>
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
    <div class="col-md-12"><h1>Login</h1></div>
  </div>
  </div>
</section>


<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
	<div class="login-form">
	  <c:if test="${ not empty error }">
      	<p>${ error }</p>
      </c:if>
      
      <form action='<s:url value="/user/loginPost"></s:url>' method="post">
        <div class="login-form-body">
            <div class="form-gp">
                <label for="email">Email address</label>
                <input type="email" name="cmail" id="email">
                <i class="ti-email"></i>
            </div>
            <div class="form-gp">
                <label for="password">Password</label>
                <input type="password" name="cpass" id="password">
                <i class="ti-lock"></i>
            </div>
            <div class="row margin-bottom-30 rmber-area">
                <div class="col-6">
                    <div class="custom-control custom-checkbox primary-checkbox mr-sm-2">
                        <input name="remember" type="checkbox" class="custom-control-input" id="remember">
                        <label class="custom-control-label" for="remember">Remember Me</label>
                    </div>
                </div>
            </div>
            <div class="submit-btn-area">
                <button id="form_submit" type="submit" class="btn btn-rounded btn-full">Submit</button>
            </div>
            <div class="form-footer text-center margin-top-30">
                <p class="text-muted">Don't have an account? <a href='<s:url value="/user/register"></s:url>'>Sign up</a></p>
            </div>
        </div>
      </form>
	</div>
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