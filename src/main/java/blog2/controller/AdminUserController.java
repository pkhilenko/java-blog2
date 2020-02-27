package blog2.controller;

import blog2.model.User;
import blog2.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public ModelAndView listCars() {
        List<User> users = userService.getUsers();
        ModelAndView modelAndView = new ModelAndView("admin-list-users");
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "admin-user-form";
    }

    @PostMapping("/saveUser")
    public String saveCar(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("userId") long id, Model model) {
        User user = userService.getUser(id);
        model.addAttribute("user", user);
        return "admin-user-form";
    }

    @GetMapping("/delete")
    public String deleteCar(@RequestParam("userId") long id) {
        userService.deleteUser(id);
        return "redirect:/admin/user";
    }
}
