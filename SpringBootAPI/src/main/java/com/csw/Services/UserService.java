package com.csw.Services;

import com.csw.Models.User;
import com.csw.Repositories.UserRepository;
import com.csw.Services.Exceptions.UserNotInsertedException;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    public User getUserById(Integer id){
        return userRepository.findById(id).get();
    }

    public List<User> getUsers() {
        return userRepository.findAll();
    }

    public User addUser(User user) throws UserNotInsertedException {
        User newUser = userRepository.save(user);
        if (newUser == null) {
            throw new UserNotInsertedException(user, "User not inserted");
        }

        return newUser;
    }

    public User updateUser(int userId, User user) {
        return userRepository.save(user);
    }

    public void deleteUser(int userId) {
        userRepository.deleteById(userId);
    }
}
