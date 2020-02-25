package blog2.controller.user;


import blog2.model.User;
import blog2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public String listCars(Model theModel) {
        List<User> theUser = userService.getUsers();
        theModel.addAttribute("users", theUser);
        return "user/list-users";
    }
}
