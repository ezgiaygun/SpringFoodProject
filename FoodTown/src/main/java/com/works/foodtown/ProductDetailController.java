package com.works.foodtown;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.Customer;
import model.Product;
import util.CrudOperation;
import util.Util;

@Controller
public class ProductDetailController {

	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String login(Model model, @PathVariable Integer id) {
		
		Product pr = crud.productResult(id);
		if(pr != null) {
			model.addAttribute("pr", pr);
		} else {
			model.addAttribute("error", "Product not found!");
		}
		return "detail";
	}
	
	@RequestMapping(value = "/order/{id}", method = RequestMethod.GET)
	public String order(@PathVariable int id, HttpServletRequest req) {
		
		if(req.getSession().getAttribute("cid") != null) {
			Date utilDate = new Date(); 
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

			int cid = ((Customer) req.getSession().getAttribute("cid")).getCid();
			Cart cart = new Cart();
			cart.setCid(cid);
			cart.setPid(id);
			cart.setOstatus("Preparing");
			cart.setOtime(sqlDate);		
			crud.cartInsert(cart);
		}
		return Util.userControl(req, "redirect:/user/myCart");
	}
}
