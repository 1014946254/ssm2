package com.kgc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.dao.StudentsMapper;
import com.kgc.entity.StudentCondition;
import com.kgc.entity.Students;
import com.kgc.entity.StudentsExample;
import com.kgc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

/**
 * @Author:LiuHao
 * @Date:2020/5/17 11:56
 */
@Service
public class StudentServiceImp implements StudentService {

    @Autowired
    private StudentsMapper studentsMapper;


    public PageInfo<Students> getAllStudentByCondition(StudentCondition studentCondition)  {
        //先开启分页
        PageHelper.startPage(studentCondition.getPage(),studentCondition.getPageSize());
        List<Students> list1 = studentsMapper.getAllStudentByCondition(studentCondition);
           return new PageInfo<Students>(list1);

    }

    public Integer addStudent(Students students) {
        return studentsMapper.insertSelective(students);
    }

    public Students selectByXh(Integer xh) {
        return studentsMapper.selectByPrimaryKey(xh);
    }

    public Integer updateStudent(Students students) {
        return studentsMapper.updateByPrimaryKey(students);
    }

    public Integer deleteStudent(Integer xh) {
        return studentsMapper.deleteByPrimaryKey(xh);
    }
}
