package mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import mvc.service.ShopService;
import store.User;

@Controller
public class HelloController {
	
	@Autowired
	private ShopService shopService;
	
	@RequestMapping("/")
	@ResponseBody
	public String hello() {
		return "Hello!";
	}
	
	@RequestMapping("/main.html")
	public String first() {
		return "first";
	}
	
	@RequestMapping(value="/registration.html", method=RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user) {
		System.out.println(user.getId());
		shopService.saveUser(user);
		return "user";
	}
	
	@RequestMapping("/registration.html")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "registration";
	}
	
	@RequestMapping("/hello.html")
	public String hello2() {
		return "myfile";
	}
	
	@RequestMapping("/users.html")
	public String findAllUsers(Model model) {
		List<User> users = shopService.findAllUsers();
		model.addAttribute("users", users);
		return "users";
	} 
	
	@RequestMapping("/user.html")
	public String findUser(@RequestParam("id") long id, Model model) {
		User user = shopService.findUser(id);
		model.addAttribute("user", user);
		return "user";
	} 

}
