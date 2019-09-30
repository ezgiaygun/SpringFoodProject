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
            <h1 class="m-0 text-dark">Edit Product</h1>
          </div><!-- /.col -->
          <div class="col-sm-6"></div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
             
		<form action='<s:url value="/admin/editProduct"></s:url>' method="POST" class="px-5">
		  <div class="form-group">	
			<input value="${pr.ptitle}" name="ptitle" type="text" class="form-control" placeholder="Title" />
		  </div>	
		  <div class="form-group">	
			<input value="${pr.pphoto}" name="pphoto" type="text" class="form-control" placeholder="Photo URL" />
		  </div>
		  <div class="form-group">
		  	<textarea name="pdesc" rows="3" class="form-control" placeholder="Description">${pr.pdesc}</textarea>
		  </div>
		  <div class="form-group">	
			<input value="${pr.pprice}" name="pprice" type="text" class="form-control" placeholder="Price" />
		  </div>

		  <div class="form-group">
			<select name="ctid" class="form-control">
			  <c:if test="${not empty ctgData}">
			    <c:forEach items="${ctgData}"  var="item">
			      <c:if test="${pr.ctid == item.ctid}">
			    	<option selected="selected" value="${item.ctid}">${item.ctname}</option>
			      </c:if>
			      <c:if test="${pr.ctid != item.ctid}">
			    	<option value="${item.ctid}">${item.ctname}</option>
			      </c:if>
			    </c:forEach>
			  </c:if>
			</select>
		  </div>
		  
		  <button type="submit" class="btn btn-success btn-block w-50 mx-auto">Save</button>
		</form>
               
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