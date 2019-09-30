package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Customer;
import util.DB;
import util.Util;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	
	DB db = new DB();
	
	// login page create
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest req) {
		return Util.userControl(req, "login");
	}
	
	// user login function
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public String userLogin(Customer cs, Model model,  
							@RequestParam(defaultValue = "off") String remember,
							HttpServletRequest req,
							HttpServletResponse res) {
		
		try {
			String query = "select * from customer where cmail = ? and cpass = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, cs.getCmail());
			pre.setString(2, Util.MD5(cs.getCpass()));
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				cs.setCid(rs.getInt("cid"));
				cs.setCname(rs.getString("cname"));
				req.getSession().setAttribute("cid", cs);
				
				// remember check
				if(remember.equals("on")) {
					Cookie cookie = new Cookie("user_cookie", ""+rs.getInt("cid"));
					cookie.setMaxAge(60*60*24);
					res.addCookie(cookie);
				}
				UserIncluderController.isLogin = true;				
				return "redirect:/";
			} else {
				model.addAttribute("error", "Email or password is wrong!");
			}
		} catch (Exception e) {
			System.err.println("user login error : " + e);
			model.addAttribute("error", "System error!");
		}
		return "user/login";
	}
	
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String userexit(HttpServletRequest req, HttpServletResponse res) {
		
		// cookie end
		Cookie cookie = new Cookie("user_cookie", "");
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		
		// all sessions remove
		req.getSession().invalidate();
		// single session remove
		req.getSession().removeAttribute("cid");
		UserIncluderController.isLogin = false;
		return "redirect:/";
	}
	
}
