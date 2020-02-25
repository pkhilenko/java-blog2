package blog2.dao;

import blog2.model.User;

import java.util.List;

public interface UserDao {
    public List<User> getUsers();

    public void saveUser(User theUser);

    public User getUser(long theId);

    public void deleteUser(long theId);
}
