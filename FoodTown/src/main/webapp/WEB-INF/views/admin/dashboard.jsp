<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <c:import url="/admin/css"></c:import>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

 <c:import url="/admin/header"></c:import>
 <c:import url="/admin/menu"></c:import>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6"></div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
             
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>150</h3>
                <p>New Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>53<sup style="font-size: 20px">%</sup></h3>
                <p>Bounce Rate</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>44</h3>
                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>65</h3>
                <p>Unique Visitors</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
            </div>
          </div>
        </div>
              
        <div class="row">
		  <table class="table table-bordered table-hover bg-white mx-2">
		    <thead>                  
		      <tr>
		        <th style="width: 10px">#</th>
		        <th>Product</th>
		        <th>Customer</th>		        
		        <th>Status</th>
		        <th>Date</th>
		        <th>Description</th>
		        <th>Action</th>
		      </tr>
		    </thead>
		    <tbody>
		    
		    <c:if test="${ not empty ls }">
		    	<c:forEach items="${ls }"  var="item" >
		      <tr>
		        <td class="align-middle">${item.order.oid }</td>
		        <td class="align-middle">${item.product.ptitle }</td> 
		        <td class="align-middle">${item.customer.cname }</td>
		        <td class="align-middle">${item.order.ostatus }</td>
		        <td class="align-middle">
		          <fmt:formatDate value="${item.order.otime}" var="formattedDate" type="date" pattern="MM-dd-yyyy hh:ss" />
				  ${formattedDate}
		        </td>
		        <td class="align-middle">		       
			        <!-- Button trigger modal -->
					<button type="button" class="btn btn-info w-100" data-toggle="modal" data-target="#descModalCenter">
					  <i class="fas fa-sticky-note"></i>
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="descModalCenter" tabindex="-1">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">${item.product.ptitle }</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body"><b>Address:</b> ${item.customer.caddress }</div>
					    </div>
					  </div>
					</div>
		        </td>
		        <td class="align-middle">
		          <a href='<s:url value="/admin/cart/updateStatus/${item.order.oid}"></s:url>' class="btn btn-primary my-1">
		        	<i class="fas fa-truck mr-2"></i>On the road
		          </a>
		          <a href='<s:url value="/admin/cart/delete/${item.order.oid}"></s:url>'class="btn btn-primary my-1">
		        	<i class="fas fa-check-circle mr-2"></i>Delivered
		          </a>
		        </td>
		      </tr>
		      </c:forEach>
		    </c:if>
		     
		    </tbody>
		  </table>        	       
        </div>
              
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.0-beta.2
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<c:import url="/admin/js"></c:import>

</body>
</html>