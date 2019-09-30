package com.works.foodtown;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Category;
import model.Product;
import util.CrudOperation;


@Controller
public class HomeController {

	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<Category> cls = crud.categoryResult();
		model.addAttribute("clist", cls);
		List<Product> products = crud.productResult();
		model.addAttribute("plist", products);
		return "home";
	}
	
}
