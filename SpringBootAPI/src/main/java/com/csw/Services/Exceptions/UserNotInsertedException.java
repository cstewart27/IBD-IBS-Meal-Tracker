package com.csw.Services.Exceptions;

import com.csw.Models.User;

public class UserNotInsertedException extends Exception{

    private User user;

    public UserNotInsertedException(User user, String message) {
        super(message);
        this.user = user;
    }

    public User getUser() {
        return user;
    }
}
