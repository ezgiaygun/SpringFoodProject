package com.works.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.Customer;
import model.Product;
import props.OrdersTable;
import util.CrudOperation;
import util.Util;

@Controller
@RequestMapping("/admin")
public class DashboardController {

	//SessionFactory sf = HibernateUtil.getSessionFactory();
	CrudOperation crud = new CrudOperation();
			
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashBoard( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());
		return Util.control(req, "dashboard");
	}
		
	public List<OrdersTable> dataResult() {
		List<OrdersTable> ls = new ArrayList<>();

		List<Cart> carts = crud.cartResult();
		for(int i=0; i<carts.size(); i++) {
			OrdersTable orders = new OrdersTable();		
			orders.setOrder(carts.get(i));
			Customer customer = crud.customerResult(carts.get(i).getCid());
			orders.setCustomer(customer);
			Product product = crud.productResult(carts.get(i).getPid());
			orders.setProduct(product);
			ls.add(orders);
		}
		
		return ls;
	}
	
	@RequestMapping(value = "/cart/updateStatus/{id}", method = RequestMethod.GET)
	public String edit( HttpServletRequest req, @PathVariable Integer id) {
		crud.cartUpdateStatus(id, "On the road");
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	// Cart is delivered, remove the order list 
	@RequestMapping(value = "/cart/delete/{id}", method = RequestMethod.GET)
	public String delete( HttpServletRequest req, @PathVariable Integer id) {
		crud.cartDelete(id);
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
}