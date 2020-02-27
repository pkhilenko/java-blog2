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


    private UserService userService;

    @Autowired
    public AdminUserController(UserService userService){
        this.userService = userService;
    }

    @GetMapping("/user")
    public ModelAndView listCars() {
        List<User> users = userService.getUsers();
        ModelAndView modelAndView = new ModelAndView("admin-list-users");
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @GetMapping("/showForm")
    public ModelAndView showFormForAdd() {
        User user = new User();
        ModelAndView modelAndView = new ModelAndView("admin-user-form");
        modelAndView.addObject(user);
        return modelAndView;
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/updateForm")
    public ModelAndView showFormForUpdate(@RequestParam("userId") long id) {
        User user = userService.getUser(id);
        ModelAndView modelAndView = new ModelAndView("admin-user-form");
        modelAndView.addObject(user);
        return modelAndView;
    }

    @GetMapping("/delete")
    public String deleteCar(@RequestParam("userId") long id) {
        userService.deleteUser(id);
        return "redirect:/admin/user";
    }
}
