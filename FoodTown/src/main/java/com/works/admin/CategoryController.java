package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Category;
import util.CrudOperation;
import util.Util;

@Controller
@RequestMapping("/admin")
public class CategoryController {

	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String product( HttpServletRequest req, Model model ) {
		model.addAttribute("ctlist", dataResult());
		return Util.control(req, "category");
	}
	
	public List<Category> dataResult() {
		List<Category> categories = crud.categoryResult();
		return categories;
	}
	
	@RequestMapping(value = "/newCategory", method = RequestMethod.POST)
	public String newProduct( HttpServletRequest req, Category category) {
		crud.categoryInsert(category);
		return Util.control(req, "redirect:/admin/category");
	}
	
	@RequestMapping(value = "/category/delete/{ctid}", method = RequestMethod.GET)
	public String delete( HttpServletRequest req, @PathVariable Integer ctid) {
		crud.categoryDelete(ctid);
		return Util.control(req, "redirect:/admin/category");
	}
}
