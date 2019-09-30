package com.works.foodtown;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.Customer;
import model.Product;
import props.OrdersTable;
import util.CrudOperation;
import util.Util;

@Controller
@RequestMapping("/user")
public class UserCartController {
	
	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
		
		if(req.getSession().getAttribute("cid") != null) {
			int cid = ((Customer) req.getSession().getAttribute("cid")).getCid();
			List<OrdersTable> ls = dataResult(cid);
			model.addAttribute("crlist", ls);
		}
		return Util.userControl(req, "myCart");
	}
	
	public List<OrdersTable> dataResult(int cid) {
		List<OrdersTable> ls = new ArrayList<>();
		List<Cart> carts = crud.cartResult(cid);
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
	
}
