package com.kbstar.dao;

import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyDao;
import javax.swing.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements MyDao<String, UserDTO> {


    @Override
    public void insert(UserDTO userDTO) {
        System.out.println("insert Oracle" + userDTO);

    }

    @Override
    public void delete(String s) {
        System.out.println("delete Oracle" + s);

    }

    @Override
    public void update(UserDTO userDTO) {
        System.out.println("update Oracle" + userDTO);

    }

    @Override
    public UserDTO select(String s) {
        UserDTO user = null;
        user = new UserDTO("id01", "pwd01","이말숙");
        return user;
    }

    @Override
    public List<UserDTO> select() {
        List<UserDTO> list = new ArrayList<>();
        list.add(new UserDTO("id01", "pwd01","이말숙"));
        list.add(new UserDTO("id02", "pwd02","이말숙"));
        list.add(new UserDTO("id03", "pwd03","이말숙"));
     return list;
    }
}
