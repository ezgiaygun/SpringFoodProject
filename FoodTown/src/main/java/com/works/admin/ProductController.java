package com.works.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Category;
import model.Product;
import props.ProductTable;
import util.CrudOperation;
import util.Util;

@Controller
@RequestMapping("/admin")
public class ProductController {
	
	CrudOperation crud = new CrudOperation();
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product( HttpServletRequest req, Model model ) {
		model.addAttribute("plist", dataResult());
		return Util.control(req, "product");
	}

	public List<ProductTable> dataResult(){
		
		List<ProductTable> productTableList = new ArrayList<ProductTable>();		
		List<Product> products = crud.productResult();
		
		for (int i=0; i<products.size(); i++) {			
			ProductTable prt = new ProductTable();
			Product product = products.get(i);
			Category category = crud.categoryResult(product.getCtid());
			
			prt.setProduct(product);
			prt.setCategoryName(category.getCtname());
			productTableList.add(prt);
		}
		return productTableList;		
	}
	
	@RequestMapping(value = "/product/new", method = RequestMethod.GET)
	public String delete( HttpServletRequest req, Model model) {
		List<Category> categories = crud.categoryResult();
		model.addAttribute("ctgData", categories);
		return Util.control(req, "productNew");
	}
	
	@RequestMapping(value = "/newProduct", method = RequestMethod.POST)
	public String newProduct( HttpServletRequest req, Product product) {
		crud.productInsert(product);
		return Util.control(req, "redirect:/admin/product");
	}
	
	@RequestMapping(value = "/product/edit/{pid}", method = RequestMethod.GET)
	public String edit( HttpServletRequest req, Model model, @PathVariable Integer pid) {
		req.getSession().setAttribute("pid", pid);
		Product product = crud.productResult(pid);		
		model.addAttribute("pr", product);
		List<Category> categories = crud.categoryResult();
		model.addAttribute("ctgData", categories);
		return Util.control(req, "productEdit");
	}
	
	@RequestMapping(value = "/editProduct", method = RequestMethod.POST)
	public String editProduct( HttpServletRequest req, Product product) {
		int pid = (Integer) req.getSession().getAttribute("pid");
		crud.productUpdate(pid, product);
		return Util.control(req, "redirect:/admin/product");
	}
	
	@RequestMapping(value = "/product/delete/{pid}", method = RequestMethod.GET)
	public String delete( HttpServletRequest req, @PathVariable Integer pid) {
		crud.productDelete(pid);
		return Util.control(req, "redirect:/admin/product");
	}
	
}
