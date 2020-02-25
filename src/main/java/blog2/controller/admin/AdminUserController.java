package blog2.controller.admin;

import blog2.model.User;
import blog2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public String listCars(Model theModel) {
        List<User> theUser = userService.getUsers();
        theModel.addAttribute("users", theUser);
        return "admin/admin-list-users";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        User theUser = new User();
        theModel.addAttribute("user", theUser);
        return "admin/admin-user-form";
    }

    @PostMapping("/saveUser")
    public String saveCar(@ModelAttribute("user") User theUser) {
        userService.saveUser(theUser);
        return "redirect:/admin/user";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("userId") long theId, Model theModel) {
        User theUser = userService.getUser(theId);
        theModel.addAttribute("user", theUser);
        return "admin/admin-user-form";
    }

    @GetMapping("/delete")
    public String deleteCar(@RequestParam("userId") long theId) {
        userService.deleteUser(theId);
        return "redirect:/admin/user";
    }
}
