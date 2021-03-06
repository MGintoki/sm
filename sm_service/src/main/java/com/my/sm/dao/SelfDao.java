package com.my.sm.dao;

import com.my.sm.entity.Staff;
import org.springframework.stereotype.Repository;

@Repository("selfDao")
public interface SelfDao {
    Staff selectByAccount(String account);
}
