package com.kbstar.dao;

import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyDao;

import java.util.List;

public class UserMYSQLDAO implements MyDao<String, UserDTO> {

    @Override
    public void insert(UserDTO userDTO) {
        System.out.println("MYSQL inserted"+userDTO);
    }

    @Override
    public void delete(String s) {

    }

    @Override
    public void update(UserDTO userDTO) {

    }

    @Override
    public UserDTO select(String s) {
        return null;
    }

    @Override
    public List<UserDTO> select() {
        return null;
    }
}
