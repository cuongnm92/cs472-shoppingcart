package edu.mum.cs472.controller;

import edu.mum.cs472.model.Role;
import edu.mum.cs472.model.User;
import edu.mum.cs472.service.RoleService;
import edu.mum.cs472.service.UserService;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "account")
public class UserController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private UserService userService;
		
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model data) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if (authentication != null && authentication.isAuthenticated() && !(authentication instanceof AnonymousAuthenticationToken)) {
			Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) authentication.getAuthorities();
			Iterator<SimpleGrantedAuthority> itr= authorities.iterator();  
			
			while(itr.hasNext()) {  
			   if (itr.next().toString().equals("admin")) {
				   return "redirect:/account/summary";
			   }
			}  
			
			return "redirect:/order/history";
		} 
		
		return "redirect:account/login";
	}
	 
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
    	
    	model.addAttribute("userForm", new User());
    	// model.addAttribute("error", null);
    	
        return "account/registration";
    }
    
    @RequestMapping(value = "/summary", method = RequestMethod.GET)
    public String summary(Model model) {
    	
    	model.addAttribute("userForm", new User());
    	
        return "account/summary";
    }
    
    @RequestMapping(value = "/manage", method = RequestMethod.GET)
    public String manageAccount(Model model) {
    	
    	model.addAttribute("userForm", new User());
    	
    	List<User> users = userService.getAllUser();
    	
    	model.addAttribute("users", users);
    	
        return "account/manage";
    }
    
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public List<User> deleteAccount(@RequestBody Map<String, String> input) {
    	
    	String username = input.get("username");
    	
    	userService.deleteUser(username);
    	
        return userService.getAllUser();
    }
    
    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String userRegistration(@ModelAttribute("userForm") User user, BindingResult result, Model data) {
    	
    	
    	Role role = roleService.getRoleByName("user");
    	
        Set<Role> roles = new HashSet<Role>();
    	roles.add(role);
    	user.setRoles(roles);
    	
    	userService.save(user);
    	
    	return "redirect:/account/successfulRegistration";
    }
    
    @RequestMapping(value = "/init", method = RequestMethod.GET)
    public String init(Model model) {
    	
    	User admin = new User();
    	admin.setUsername("admin");
    	admin.setEmail("admin@mail.com");
    	admin.setPassword("admin");
    	Role adminRole = roleService.getRoleByName("admin");
    	Set<Role> roles = new HashSet<Role>();
    	roles.add(adminRole);
    	admin.setRoles(roles);
    	userService.save(admin);
    	
    	User user = new User();
    	user.setUsername("demo");
    	user.setEmail("demo" + "@mail.com");
    	user.setPassword("demo");
    	Role userRole = roleService.getRoleByName("user");
    	roles = new HashSet<Role>();
    	roles.add(userRole);
    	user.setRoles(roles);
    	userService.save(user);
    	
    	for(int i=0; i<10; i++) {
    		user = new User();
        	user.setUsername("user" + i);
        	user.setEmail("user" + i + "@mail.com");
        	user.setPassword("123456789");
        	userRole = roleService.getRoleByName("user");
        	roles = new HashSet<Role>();
        	roles.add(userRole);
        	user.setRoles(roles);
        	userService.save(user);
    	}
    	
    	return "redirect:/";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "account/login";
    }
    
    @RequestMapping(value = "/successfulRegistration", method = RequestMethod.GET)
    public String successfulRegistration(Model model) {
        return "account/successfulRegistration";
    }
}
