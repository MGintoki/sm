package com.my.sm.service.impl;

import com.my.sm.dao.SelfDao;
import com.my.sm.dao.StaffDao;
import com.my.sm.entity.Staff;
import com.my.sm.service.SelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("selfService")
public class SelfServiceImpl implements SelfService {

    @Autowired
    private StaffDao staffDao;
    @Autowired
    private SelfDao selfDao;
    public Staff login(String account, String password) {
        Staff staff = selfDao.selectByAccount(account);
        if(staff == null)return null;
        if(staff.getPassword().equals(password))return staff;
        return null;
    }

    public void changePassword(Integer id, String password) {
        Staff staff = staffDao.selectById(id);
        staff.setPassword(password);
        staffDao.update(staff);
    }
}
