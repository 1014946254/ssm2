package com.kgc.dao;

import com.github.pagehelper.PageInfo;
import com.kgc.entity.StudentCondition;
import com.kgc.entity.Students;
import com.kgc.entity.StudentsExample;
import java.util.List;

public interface StudentsMapper {
    int deleteByPrimaryKey(Integer xh);

    int insert(Students record);

    int insertSelective(Students record);

    List<Students> selectByExample(StudentsExample example);

    Students selectByPrimaryKey(Integer xh);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);

    //先查询
   List<Students> getAllStudentByCondition(StudentCondition studentCondition);
}