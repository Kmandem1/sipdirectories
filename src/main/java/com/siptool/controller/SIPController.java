package com.siptool.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.siptool.model.SIP;
import com.siptool.model.User;
import com.siptool.repository.UserRepository;
import com.siptool.service.SIPService;
import com.siptool.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SIPController {

    @Autowired
    private SIPService service;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private UserRepository userRepository;
    
    
    @GetMapping("/")
    public String home() {
        return "index";
    }
    
    @GetMapping("/view/login")
    public String showLoginPage() {
        return "login"; 
    }
    
    @GetMapping("/view/register")
    public String showRegisterPage() {
        return "register"; 
    }
    
    @PostMapping("/register")
    public String registerUser(
            @RequestParam("fname") String fullName,
            @RequestParam("mailid") String email,
            @RequestParam("password") String password,
            Model model) {

        Optional<User> existingUser = userService.findByEmail(email);
        if (existingUser.isPresent()) {
            model.addAttribute("error", "Email already registered.");
            return "register";
        }

        User user = new User();
        user.setName(fullName);
        user.setEmail(email);
        user.setPassword(password); 

        userService.registerUser(user);

        model.addAttribute("success", "Registration successful. Please log in.");
        return "login";
    }
    
    @GetMapping("/view/home")
    public String showHomePage() {
        return "home"; 
    }

    
    @PostMapping("/login")
    public String handleLogin(
            @RequestParam("mailid") String email,
            @RequestParam("password") String password,
            HttpSession session,
            Model model
    ) {
        Optional<User> userOpt = userRepository.findByEmailAndPassword(email, password);

        if (userOpt.isPresent()) {
            session.setAttribute("email", email);
            return "home"; 
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login"; 
        }
    }
    
    @GetMapping("/view/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "logout"; 
    }
    
    
    @GetMapping("/view/category")
    public String showCategoryPage() {
        return "category"; 
    }
    
    @GetMapping("/view/contact")
    public String showContactPage() {
        return "contact"; 
    }
    
   
    @GetMapping("/view/searchcategories")
    public String showSearchCategories(@RequestParam(name = "category", required = false) String category, Model model) {
        model.addAttribute("selectedCategory", category);
        return "searchcategories"; 
    }
    
  
    
    @GetMapping("/search")
    public String search(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) String productName,
            @RequestParam(required = false) String hardwareComponents,
            @RequestParam(required = false) String softwareComponents,
            @RequestParam(required = false) String version,
            @RequestParam(required = false) String cost,
            @RequestParam(required = false) String supplier,
            @RequestParam(required = false) String manufacturer,
            Model model
    ) {
        // Convert empty strings to null
        category = isEmpty(category) ? null : category;
        productName = isEmpty(productName) ? null : productName;
        hardwareComponents = isEmpty(hardwareComponents) ? null : hardwareComponents;
        softwareComponents = isEmpty(softwareComponents) ? null : softwareComponents;
        version = isEmpty(version) ? null : version;
        supplier = isEmpty(supplier) ? null : supplier;
        manufacturer = isEmpty(manufacturer) ? null : manufacturer;

        Double parsedCost = null;
        if (!isEmpty(cost)) {
            try {
                parsedCost = Double.parseDouble(cost.trim());
            } catch (NumberFormatException e) {
                // Optional: log or handle invalid cost input
            }
        }

        List<SIP> results = service.advancedSearch(
                category, productName, hardwareComponents, softwareComponents,
                version, parsedCost, supplier, manufacturer);

        model.addAttribute("results", results);
        return "search";
    }

    private boolean isEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }
    
    @GetMapping("/view/profile")
    public String showProfile(HttpSession session, Model model) {
        String email = (String) session.getAttribute("email");

        if (email == null) {
            return "login";
        }

        Optional<User> userOpt = userRepository.findByEmail(email);
        userOpt.ifPresent(user -> model.addAttribute("user", user));

        return "profile";
    }
    
    
    
    @GetMapping("/view/{id}")
    public String view(@PathVariable Long id, Model model) {
        model.addAttribute("sip", service.getSIPById(id));
        return "view";
    }
    
	
	  @GetMapping("/view/compare") 
	  public String showComparePage(Model model) { 
		  List<String> categories = sipService.getAllCategories();
	        model.addAttribute("categories", categories);
	        //model.addAttribute("selectedCategory", category);
		  return  "compare"; 
	  }
	 

    @Autowired
    private SIPService sipService;

    @GetMapping("/compare")
    public String showComparePage(@RequestParam(value = "category", required = false) String category, Model model) {
        List<String> categories = sipService.getAllCategories();
        model.addAttribute("categories", categories);
        model.addAttribute("selectedCategory", category);

        if (category != null && !category.isEmpty()) {
            List<SIP> products = sipService.getSIPsByCategory(category);
            model.addAttribute("products", products);
        }

        return "compare";
    }

    @GetMapping("/compare/result")
    public String compareProducts(@RequestParam Long product1Id, @RequestParam Long product2Id, Model model) {
        SIP product1 = sipService.getSIPById(product1Id);
        SIP product2 = sipService.getSIPById(product2Id);

        Map<String, Object> comparison = new HashMap<>();
        comparison.put("product1", product1);
        comparison.put("product2", product2);
        model.addAttribute("comparison", comparison);

        return "compare";
    }
}