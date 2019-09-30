<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

 <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
  
    <!-- Brand Logo -->
    <a href="#" class="brand-link mt-3 pb-3 mb-3 d-flex">
      <img src='<s:url value="/resources/dist/img/admin/AdminLTELogo.png"></s:url>' alt="Admin" class="brand-image elevation-3"
           style="opacity: .8">
      <span class="brand-text ml-3">FoodTown</span>     
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel pb-3 mb-3 d-flex px-2">
        <div class="info">
          <a href="#">
	        <i class="far fa-user light p-1 mr-1"></i>
	        <span>Admin</span>
		  </a>
        </div>
      </div>

	  <!-- Sidebar Menu -->
      <nav class="mt-2">      
        <ul class="nav nav-pills nav-sidebar flex-column">
          <li class="nav-item">
            <a href='<s:url value="/admin/dashboard"></s:url>' class="nav-link ${ link == 'dashboard' ? 'active': ''}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>            
          </li>
          <li class="nav-item">
            <a href='<s:url value="/admin/customer"></s:url>' class="nav-link ${ link == 'customer' ? 'active': ''}">
              <i class="nav-icon">
                <img src='<s:url value="/resources/dist/img/admin/icon/round_people_white_18dp.png"></s:url>' width="25" />
              </i>
              <p>Customer</p>
            </a>            
          </li>
          <li class="nav-item">
            <a href='<s:url value="/admin/product"></s:url>' class="nav-link ${ link == 'product' ? 'active': ''}">
              <i class="nav-icon">
                <img src='<s:url value="/resources/dist/img/admin/icon/round_fastfood_white_18dp.png"></s:url>' width="25" />
              </i>
              <p>Product</p>
            </a>            
          </li>
          <li class="nav-item">
            <a href='<s:url value="/admin/category"></s:url>' class="nav-link ${ link == 'category' ? 'active': ''}">
              <i class="nav-icon">
                <img src='<s:url value="/resources/dist/img/admin/icon/round_category_white_18dp.png"></s:url>' width="25" />
              </i>
              <p>Category</p>
            </a>            
          </li> 
          <li class="nav-item">
            <a href='<s:url value="/admin/exit"></s:url>' class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Exit</p>
            </a>
          </li>                            
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
               
    </div>
    <!-- /.sidebar -->
  </aside>