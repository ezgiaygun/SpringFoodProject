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
            <h1 class="m-0 text-dark">Category</h1>
          </div><!-- /.col -->
          <div class="col-sm-6"></div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          
		  <form action='<s:url value="/admin/newCategory"></s:url>' method="post" class="input-group mb-3 mx-2">
			  <div class="input-group-prepend">
			    <span class="input-group-text">New Category:</span>
			  </div>
			  <input name="ctname" type="text" class="form-control">
			  <div class="input-group-append">			  	
			    <button class="btn btn-outline-secondary" type="submit">Add</button>
			  </div>
		  </form>          
        	
		  <table class="table table-bordered table-hover bg-white mx-2">
			<thead>                  
			  <tr>
			    <th style="width:50px"></th>
			    <th style="width: 10px">#</th>
			    <th>Name</th>
			  </tr>
			</thead>
			<tbody>			
			  <c:if test="${ not empty ctlist }">
				<c:forEach items="${ctlist}"  var="item" >
				  <tr>
				    <td>
				    	<a href='<s:url value="/admin/category/delete/${item.ctid}"></s:url>' class="btn btn-danger">Delete</a>
				    </td>
				    <td>${item.ctid}</td>
				    <td>${item.ctname}</td>
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