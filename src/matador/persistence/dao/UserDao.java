package matador.persistence.dao;

import matador.persistence.model.User;

import javax.management.InstanceAlreadyExistsException;
import java.io.FileNotFoundException;
import java.util.Collection;

/**
 * Created by matr on 14.03.14.
 */
public interface UserDao {

    User getByEmail(String Email);

    boolean checkEmail(String email,String password);

    void save(User user) throws InstanceAlreadyExistsException;

    void delete(String email);

    Collection<User> getAll();
}
