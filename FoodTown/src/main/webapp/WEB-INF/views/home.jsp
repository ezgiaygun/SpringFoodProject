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
    <title>Food | Home</title>
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
 
  <!-- Slider-->
  <section>
    <div class="jl-main-slider">
      <div class="slide" style="background-image: url('<s:url value="/resources/site/img/slider-2.jpg"></s:url>');">
      <div class="container"><div class="row"><div class="col col-md-6 slide-caption">      
      <div class="slide-title"><span class="jl-title-info">Always Tasty Food</span><h2>Special Offer</h2></div><div class="slide-subtitle"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p></div></div></div></div>
      </div>
      <div class="slide" style="background-image: url('<s:url value="/resources/site/img/slider-1.jpg"></s:url>');">
      <div class="container"><div class="row"><div class="col col-lg-6 slide-caption">
        
        <div class="slide-title"><span class="jl-title-info">Always Tasty Food</span><h2>Fresh & hot</h2></div><div class="slide-subtitle"><p>Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat.</p></div></div></div>
      </div>
      </div>
    </div>
  </section>

  <!-- Food Menu -->
  <section class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
  <div class="container">
    <div class="row justify-content-center margin-bottom-50">
    <div class="col-md-8 text-center">
    <div class="jl-headding-title">
    <h2 class="">Categories</h2>
    <span class="jl-headding-separator"></span> 
    </div>
    </div>
    </div>

    <div class="row">
    <div class="col-md-12">
      <ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">    
      <c:if test="${ not empty clist }">
		<c:forEach items="${clist}"  var="item">
        <li class="nav-item"><a data-toggle="tab" href="#menu1" class="active"><i class="fas fa-star"></i> ${item.ctname} </a></li>
      	</c:forEach>
	  </c:if>
      </ul>

<div class="row justify-content-center margin-bottom-50">
    <div class="col-md-8 text-center">
    <div class="jl-headding-title">
    <span class="jl-title-info">Always Tasty Food</span>
    <h2 class="">Choose & enjoy</h2>
    <span class="jl-headding-separator"></span> 
    <div class="jl-heading-desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa Cum sociis natoque penatibus.</div>
    </div>
    </div>
    </div>

      	<div class="row py-5">
            <c:if test="${ not empty plist}">
			<c:forEach items="${plist}" var="item" >
            <div class="col-lg-4 col-sm-6 mb-4">
              <div class="card shadow-sm h-100">

				<img class="img-fluid" src='<s:url value="${item.pphoto}"></s:url>'/>
                <div class="caption m-3 h-100">
                    <h5>
                    <a class="link link-default" href='<s:url value="/product/${item.pid}"></s:url>'>
                    ${item.ptitle}
                    </a>
                    </h5>
                    <p class="text-italic">${item.pdesc}</p>
                    </div>
                    <div class="card-body pb-3 px-3">
                    <h5 class="price float-left">${item.pprice}</h5>
                    <a class="btn float-right" 
                    href='<s:url value="/product/${item.pid}"></s:url>'>Order Now</a>
                    </div>	
  			  </div> <br/>
            </div>               
            <br/>
            </c:forEach>
		  </c:if>
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