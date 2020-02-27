package blog2.dao;

import blog2.model.User;

import java.util.List;

public interface UserDao {
    public List<User> getUsers();

    public void saveUser(User user);

    public User getUser(long id);

    public void deleteUser(long id);
}
