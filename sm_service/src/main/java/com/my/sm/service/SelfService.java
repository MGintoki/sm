package com.my.sm.service;

import com.my.sm.entity.Staff;

public interface SelfService {

    Staff login(String account, String password);

    void changePassword(Integer id, String password);
}
