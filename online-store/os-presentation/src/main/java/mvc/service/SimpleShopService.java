package mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import store.User;

@Service
public class SimpleShopService implements ShopService {
	static List<User> users = new ArrayList<User>();
	static {
		users.add(new User("Vasia", "vasia", "123", "mail1", 1));
		users.add(new User("Petia", "petia", "123", "mail2", 2));
	}

	public void saveUser(User user) {
		users.add(user);
	}

	public void deleteUser(long id) {
		
	}

	public User findUser(long id) {
		//User user = new User("Petia", "petia", "123", "mail2", 2);
		//user.setId(id);
		//return user;
		User us=null;
		for (User user:users) {
			if (user.getId()==id)
				us=user;
		}
		return us;
	}

	public List<User> findAllUsers() {
		//List<User> list = new ArrayList<User>();
		//list.add(new User("Vasia", "vasia", "123", "mail1", 1));
		//return list;
		return users;
	}

}
