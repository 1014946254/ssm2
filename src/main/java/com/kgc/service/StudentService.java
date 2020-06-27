package com.kgc.service;

import com.github.pagehelper.PageInfo;
import com.kgc.entity.StudentCondition;
import com.kgc.entity.Students;

import java.util.List;

/**
 * @Author:LiuHao
 * @Date:2020/5/17 11:45
 */
public interface StudentService {
   //分页查询
   PageInfo<Students> getAllStudentByCondition(StudentCondition studentCondition);
   //添加条素
   Integer addStudent(Students students);
   //通过xh修改，修改之前先查询
   Students selectByXh(Integer xh);
   //修改
   Integer updateStudent(Students students);
   //通过xh删除
   Integer deleteStudent(Integer xh);
}
