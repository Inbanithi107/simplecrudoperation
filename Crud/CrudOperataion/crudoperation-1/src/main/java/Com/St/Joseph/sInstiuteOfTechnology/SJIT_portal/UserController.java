package Com.St.Joseph.sInstiuteOfTechnology.SJIT_portal;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository repo;
	
	@GetMapping("/")
	public String greetings(Model model) {
		return "welcome";
	}
	
	@PostMapping("/listuser")
	public String savedata(@ModelAttribute User user, Model model) {
		
		repo.save(user);
		
		List<User> users = repo.findAll();
		
		model.addAttribute("users", users);
		
		return "hello";
		
	}

}
