package com.kbstar.service;
import com.kbstar.dao.UserDAO;
import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyDao;
import com.kbstar.frame.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("uservice")
public class UserService implements MyService<String, UserDTO> {
    // 방법1
//    @Autowired
//    @Qualifier("udao")
//    MyDao<String, UserDTO> dao;

    //     방법2
    @Autowired
    UserDAO dao;

    @Override
    public void register(UserDTO userDTO) {
        dao.insert(userDTO);
        System.out.println("send email");
    }

    @Override
    public void remove(String s) {
         dao.delete(s);
         System.out.println("send Mail");
    }

    @Override
    public void modify(UserDTO userDTO) {
        dao.update(userDTO);
        System.out.println("Send Mail");
    }
    @Override
    public UserDTO get(String s) {
        return dao.select(s);
    }
    @Override
    public List<UserDTO> get() {
        return dao.select();
    }
}
