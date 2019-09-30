package props;

import model.Customer;
import model.Cart;
import model.Product;

public class OrdersTable {

	//private int oid;
	private Cart order;
	private Product product;
	private Customer customer;
    

	public Cart getOrder() {
		return order;
	}
	public void setOrder(Cart order) {
		this.order = order;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}    