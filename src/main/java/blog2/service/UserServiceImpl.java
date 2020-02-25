package blog2.service;

import blog2.dao.UserDao;
import blog2.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    @Transactional
    public List<User> getUsers() {
        return userDao.getUsers();
    }

    @Override
    @Transactional
    public void saveUser(User theUser) {
        userDao.saveUser(theUser);
    }

    @Override
    @Transactional
    public User getUser(long theId) {
        return userDao.getUser(theId);
    }

    @Override
    @Transactional
    public void deleteUser(long theId) {
        userDao.deleteUser(theId);
    }
}
