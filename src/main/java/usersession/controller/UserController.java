package usersession.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import usersession.dao.UserDAO;
import usersession.model.User;


@Controller
@SessionAttributes("role")
public class UserController {

	private final String ADMIN_ROLE = "admin";
	
	
	@Autowired
	private UserDAO userDAO; 
	
	//read
	@GetMapping("/users")
	public String userlist(@SessionAttribute("role") String role,Model model) {
		System.out.println(role+"Role");
		if(role.equals(ADMIN_ROLE)) {
		List<User> users = userDAO.getAll();
		model.addAttribute("users", users);
		return "userlist";
		}else {
			model.addAttribute("user", new User());
			return "login";
		}
	}
	
	@GetMapping("/users/{id}")
	public String user(@PathVariable int id,Model model) {
		User user = userDAO.getById(id);
		model.addAttribute("user",user);
		return "userdetails";
	}
	
	
	//create
	@GetMapping("/users/adduser")
	public String addForm(@SessionAttribute("role")String role,Model model) {
		if(role.equals(ADMIN_ROLE)) {
		model.addAttribute("user", new User());
		return "addform";
		}else {
			return "login";
		}
	}
	@PostMapping("/users/user")
	public String saveUser(@SessionAttribute("role")String role,@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {
		
		//System.out.println("users post"+user.getAddress());
		if(role.equals(ADMIN_ROLE)) {
		if (result.hasErrors()) {
			return "addform";
		}
		userDAO.create(user);
		return "userdetails";
		}else {
			return "login";
		}
	}
	
	//update
	@GetMapping("/users/update/{user}")
	public String addForm(@PathVariable User user,Model model) {
		model.addAttribute("user",user);
		return "update";
	}
	@PostMapping("/users/{id}")
	public String updateUser(@ModelAttribute("user") @Valid User user,@PathVariable int id, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "update";
		}
		userDAO.update(user);
		return "userlist";
	}
	
	
	//delete
	@GetMapping("/users/delete/{id}")
	public String delete(@PathVariable int id) {
		System.out.println("ID"+id);
		userDAO.deleteById(id);
		return "redirect:/users";
	}
	
}