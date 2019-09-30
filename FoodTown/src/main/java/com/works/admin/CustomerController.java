package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Customer;
import util.CrudOperation;
import util.Util;

@Controller
@RequestMapping("/admin")
public class CustomerController {
	
	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String product( HttpServletRequest req, Model model ) {
		model.addAttribute("clist", dataResult());
		return Util.control(req, "customer");
	}

	public List<Customer> dataResult() {
		List<Customer> customers = crud.customerResult();
		return customers;
	}
	
	@RequestMapping(value = "/customer/delete/{cid}", method = RequestMethod.GET)
	public String delete( HttpServletRequest req, @PathVariable Integer cid) {
		crud.customerDelete(cid);
		return Util.control(req, "redirect:/admin/customer");
	}
}
