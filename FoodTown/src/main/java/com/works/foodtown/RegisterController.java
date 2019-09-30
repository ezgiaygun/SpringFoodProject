package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Customer;
import util.CrudOperation;
import util.DB;
import util.Util;

@Controller
@RequestMapping("/user")
public class RegisterController {

	DB db = new DB();
	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(HttpServletRequest req) {
		return Util.userControl(req, "register");
	}
	
	@RequestMapping(value = "/registerPost", method = RequestMethod.POST)
	public String userRegister(Customer cs, @RequestParam String cpass2, Model model) {		
		if(cs.getCpass().equals(cpass2)) {
			try {
				String query = "select * from customer where cmail = ? and cpass = ?";
				PreparedStatement pre = db.connect(query);
				pre.setString(1, cs.getCmail());
				pre.setString(2, Util.MD5(cs.getCpass()));
				ResultSet rs = pre.executeQuery();
				if (rs.next()) {
					model.addAttribute("error", "User is already registered");
				} else {
					cs.setCpass(Util.MD5(cs.getCpass()));
					crud.customerInsert(cs);
					return "redirect:/user/login";
				}
			} catch(Exception e) {
				System.err.println("user register error : " + e);
				model.addAttribute("error", "System error!");
			}
		
		} else {
			model.addAttribute("error", "Passwords do not match!");
		}
		return "redirect:/user/register";
	}
}
