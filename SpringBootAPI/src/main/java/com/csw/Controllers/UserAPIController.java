package com.csw.Controllers;


import com.csw.Models.User;
import com.csw.Services.Exceptions.UserNotInsertedException;
import com.csw.Services.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping(path = "/api/users")
public class UserAPIController {

    private UserService userService;

    public UserAPIController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(path = "/{id}")
    public User getUserById(@PathVariable Integer id) {
        User user = userService.getUserById(id);
        if(user == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found");
        }
        return user;
    }

    @GetMapping(path = "")
    public List<User> getUsers() {
        List<User> users =  userService.getUsers();
        if(users == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Users not found");
        }
        return users;
    }

    @PostMapping(path = "")
    public User addUser(@RequestBody User user) throws UserNotInsertedException {
        return userService.addUser(user);
    }

    @PutMapping(path = "/{id}")
    public User updateUser(@PathVariable int id, @RequestBody User user) {
        return userService.updateUser(id, user);
    }

    @DeleteMapping(path = "/{id}")
    public void deleteUser(@PathVariable int id) {
        userService.deleteUser(id);

        throw new ResponseStatusException(HttpStatus.NO_CONTENT, "User deleted");
    }
}
