package mvc.service;

import java.util.List;

import store.User;

public interface ShopService {
	
	//void saveProduct(Product poduct);
	//void deleteProduct(long id);
	//Product findProduct(long id);
	//List<Product> findAllProducts();
	
	void saveUser(User user);
	void deleteUser(long id);
	User findUser(long id);
	List<User> findAllUsers();
}
