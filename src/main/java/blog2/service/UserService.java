package blog2.service;

import blog2.model.User;

import java.util.List;

public interface UserService {
    public List<User> getUsers();

    public void saveUser(User theUser);

    public User getUser(long theId);

    public void deleteUser(long theId);
}
