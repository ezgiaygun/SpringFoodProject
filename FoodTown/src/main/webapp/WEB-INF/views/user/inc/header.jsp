<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Header-->
<header>
<div class="jl_blank_nav"></div>
<div class="jl-menu-wrapper jl_menu_sticky jl_stick">        
<div class="container">
  <div class="row">
  <div class="col-md-12">
  <div class="jl_header_wrapper">

<!-- nav toggle button -->
<button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false">
<span></span>
<span></span>
<span></span>
</button>

<!-- Logo-->
<div class="jl_logo"><a href="#"><img src='<s:url value="/resources/site/img/logo.png"></s:url>' alt=""></a></div>

<!-- Menu-->
<div class="navigation_wrapper header-nav navbar-collapse collapse" id="navbarMobile">
<ul id="mainmenu" class="jl_main_menu">
    <li class="menu-item-has-children jl-mega-menu"><a href='<s:url value="/"></s:url>'>Home</a></li>
    <li class="menu-item-has-children jl-mega-menu"><a href='<s:url value="/user/login"></s:url>'>Login</a></li>
    <li class="menu-item-has-children jl-mega-menu"><a href='<s:url value="/user/register"></s:url>'>Register</a></li>
    <c:if test="${login == true }">
    	<li class="menu-item-has-children jl-mega-menu"><a href='<s:url value="/user/exit"></s:url>'>Exit</a></li>
	</c:if>
	<li class="menu-item-has-children jl-mega-menu"><a href='<s:url value="/admin/"></s:url>'>Admin</a></li>
</ul>
</div>

<!-- Cart and Reservation-->
<div class="jl-header-right">
<a class="jl-header-cart" href='<s:url value="/user/myCart"></s:url>'>
    <span class="jl-cart-icon ti-shopping-cart"></span>
    <span class="jl-cart-number"><span>0</span></span>
</a>
</div>

  </div>
  </div>
  </div>
</div>
</div>
</header>
