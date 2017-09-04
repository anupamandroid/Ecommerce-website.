package org.TharArt.CtrlMapping;

import java.security.Principal;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value = "/homePage**", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("homePage");
		return model;
	}
	
	@Secured({"ROLE_USER"})
	@RequestMapping(value = "/userPage**", method = RequestMethod.GET)
	public ModelAndView user() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected User page!");
		model.setViewName("userPage");
		return model;
	}
	@Secured({"ROLE_ADMIN"})
	@RequestMapping(value = "/adminPage**", method = RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected Admin page!");
		model.setViewName("adminPage");
		return model;
	}

	// Spring Security see this :
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("loginPage");

		return model;

	}

	// for 403 access denied page
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accesssDenied(Principal user) {

		ModelAndView model = new ModelAndView();

		if (user != null) {
			model.addObject("msg", "Hi " + user.getName() + ", you do not have permission to access this page!");
		} else {
			model.addObject("msg", "You do not have permission to access this page!");
		}

		model.setViewName("accessDenied");
		return model;

	}
}
