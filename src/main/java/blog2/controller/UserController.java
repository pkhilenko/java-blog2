package blog2.controller;


import blog2.model.User;
import blog2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class UserController {
    private UserService userService;

    @Autowired
    public UserController(UserService userService){
        this.userService = userService;
    }

    @GetMapping("/user")
    public String listCars(Model model) {
        List<User> users = userService.getUsers();
        model.addAttribute("users", users);
        return "list-users";
    }

}
