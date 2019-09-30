<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Products</title>
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
            <h1 class="m-0 text-dark">Product</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <div class="float-sm-right">
			  <a href='<s:url value="/admin/product/new"></s:url>' class="btn btn-success">New Product</a>
            </div>                      
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        
		  <table class="table table-bordered table-hover bg-white mx-2">
			<thead>                  
			  <tr>
			    <th style="width: 10px">#</th>
			    <th>Title</th>
			    <th>Photo</th>
			    <th>Description</th>
			    <th>Price</th>
			    <th>Category</th>
			    <th style="width:175px">Action</th>
			  </tr>
			</thead>
			<tbody>			
			  <c:if test="${ not empty plist }">
				<c:forEach items="${plist}"  var="item" >
				  <tr>
				    <td>${item.product.pid}</td>
				    <td>${item.product.ptitle}</td>
				    <td>${item.product.pphoto}</td> 
				    <td>${item.product.pdesc}</td>
				    <td>${item.product.pprice}</td>
				    <td>${item.categoryName}</td>
				    <td>
				    	<a href='<s:url value="/admin/product/edit/${item.product.pid}"></s:url>' class="btn btn-info">Edit</a>
				    	<a href='<s:url value="/admin/product/delete/${item.product.pid}"></s:url>' class="btn btn-danger">Delete</a>
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