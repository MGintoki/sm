package com.my.sm.dao;

import com.my.sm.entity.Staff;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("staff")
public interface StaffDao {
    void insert(Staff staff);
    void delete(Integer id);
    void update(Staff staff);
    Staff selectById(Integer id);
    List<Staff> selectAll();
}
