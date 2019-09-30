package util;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import model.Cart;
import model.Category;
import model.Customer;
import model.Product;

public class CrudOperation {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	// CART
	
	public List<Cart> cartResult() {	
		Session sesi = sf.openSession();
		List<Cart> carts = sesi.createQuery("from Cart order by otime desc").getResultList();
		return carts;
	}
	
	public List<Cart> cartResult(int cid) {
		Session sesi = sf.openSession();
		List<Cart> carts = sesi.createQuery("from Cart where cid = ? order by otime desc")
				.setParameter(0, cid).getResultList();
		return carts;
	}
	
	public void cartInsert(Cart cart) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id =  (int) sesi.save(cart);
		tr.commit(); 
	}
	
	public void cartUpdateStatus(int oid, String status) {
		Session sesi = sf.openSession();
		Cart cr = (Cart) sesi.get(Cart.class, oid);
		
		Transaction tr = sesi.beginTransaction();
		cr.setOstatus(status);
		sesi.update(cr);
		tr.commit();
	}
	
	public void cartDelete(int oid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Cart cr = sesi.get(Cart.class, oid);
		sesi.delete(cr);
		tr.commit();
	}
	
	// CUSTOMER
	
	public List<Customer> customerResult() {	
		Session sesi = sf.openSession();
		List<Customer> customers = sesi.createQuery("from Customer").getResultList();
		return customers;
	}
	
	public Customer customerResult(int cid) {
		Session sesi = sf.openSession();
		Customer cs = (Customer) sesi.get(Customer.class, cid);
		return cs;
	}
	
	public void customerInsert(Customer customer) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id =  (int) sesi.save(customer);
		tr.commit(); 
	}
	
	public void customerDelete(int cid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Customer cs = sesi.get(Customer.class, cid);
		sesi.delete(cs);
		tr.commit();
	}
	
	// PRODUCT
	
	public List<Product> productResult() {	
		Session sesi = sf.openSession();
		List<Product> products = sesi.createQuery("from Product").getResultList();
		return products;
	}
	
	public Product productResult(int pid) {
		Session sesi = sf.openSession();
		Product pr = (Product) sesi.get(Product.class, pid);
		return pr;
	}
	
	public void productInsert(Product product) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id =  (int) sesi.save(product);
		tr.commit(); 
	}
	
	public void productUpdate(int pid, Product product) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();	
		product.setPid(pid);
		sesi.update(product);
		tr.commit();
	}
	
	public void productDelete(int pid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Product pr = sesi.get(Product.class, pid);
		sesi.delete(pr);
		tr.commit();
	}
	
	// CATEGORY
	
	public List<Category> categoryResult() {	
		Session sesi = sf.openSession();
		List<Category> categories = sesi.createQuery("from Category").getResultList();
		return categories;
	}
	
	public Category categoryResult(int ctid) {	
		Session sesi = sf.openSession();
		Category ctg = (Category) sesi.get(Category.class, ctid);
		return ctg;
	}
	
	public void categoryInsert(Category category) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id =  (int) sesi.save(category);
		tr.commit();
	}
	
	public void categoryDelete(int ctid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Category ctg = sesi.get(Category.class, ctid);
		sesi.delete(ctg);
		tr.commit();
	}
	
}
