package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Customer;
import model.Product;
import props.ProductTable;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class SearchController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	
	@RequestMapping(value = "/customer/search", method = RequestMethod.GET)
	public String searchCustomer(HttpServletRequest req, Model model, @RequestParam String q) {
		Session session = sf.openSession();
		List<Customer> ls = session.createQuery("from Customer where cname like ? or cmail like ? or caddress like ? order by cid")
			.setParameter(0, "%"+q+"%")
			.setParameter(1, "%"+q+"%")
			.setParameter(2, "%"+q+"%")
			.list();
		model.addAttribute("clist", ls);
		
		return Util.control(req, "customer");
	}
}