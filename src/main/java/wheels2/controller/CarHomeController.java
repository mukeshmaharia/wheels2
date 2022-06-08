package wheels2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class CarHomeController {
      
	@GetMapping("/")
	public String home() {
		System.out.println("hello home");
		return "home1";
	}
}
