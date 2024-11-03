package com.project.PTS;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

@GetMapping("/login")
public String login(){
	return "login";
}

@GetMapping("/home")
public String home(@RequestParam("email") String email,Model model) {
	model.addAttribute("email",email);
	return "home";
}

@GetMapping("/logout")
public String logout() {
	return "login";
}

@GetMapping("/about")
public String about() {
	return "about";
}

@GetMapping("/contact")
public String contact() {
	return "contact";
}

@GetMapping("/register")
public String register() {
	return "register";
}
}
