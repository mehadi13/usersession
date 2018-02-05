package usersession.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import usersession.dao.UserDAO;
import usersession.model.User;

@Controller
@SessionAttributes("role")
public class LoginController {

	@Autowired
	UserDAO userDAO;

	@GetMapping("/")
	public String showLogInPage(Model model) {
		System.out.println("Login controller");
		model.addAttribute("user", new User());
		return "login";
	}

	
	@PostMapping("/dologin")
	public String doLogin(@ModelAttribute("user") User user, Model model) {
		// Implement your business logic
		User validUser = userDAO.loginCheck(user.getEmail(), user.getPassword());

		if (validUser == null) {
			model.addAttribute("message", "Login failed. Try again.");
			return "login";
		}

		model.addAttribute("username", validUser.getName());
		model.addAttribute("userid", validUser.getId());
		model.addAttribute("role", validUser.getRole());
		System.out.println("asdfasdf");
		return "success";
	}
	
	@GetMapping("/logout")
	public String showLoggedOut(HttpSession session) {
		session.invalidate();
	
		return "redirect:/login";
	}
}