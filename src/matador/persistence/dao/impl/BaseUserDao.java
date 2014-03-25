package matador.persistence.dao.impl;

import matador.persistence.dao.UserDao;
import matador.persistence.model.User;

import javax.management.InstanceAlreadyExistsException;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;

/**
 * Created by matr on 14.03.14.
 */
public class BaseUserDao implements UserDao {

      Map<String,User> bd = new HashMap<String, User>();
    public static final UserDao INSTANCE = new BaseUserDao();

    private BaseUserDao(){

    }

    @Override
    public  User getByEmail(String Email){
       return bd.get(Email);
    }
    @Override
    public boolean checkEmail(String email, String password){
        User user = bd.get(email);
        if(user.getPassword() == password)
            return true;
        return false;
    }
    @Override
    public void save(User user)throws InstanceAlreadyExistsException {
            bd.put(user.getEmail(),user);
    }
    @Override
    public void delete(String email){
            bd.remove(email);
    }
    @Override
    public Collection<User> getAll(){
        return bd.values();

    }
}
