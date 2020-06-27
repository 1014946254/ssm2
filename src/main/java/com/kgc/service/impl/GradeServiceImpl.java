package com.kgc.service.impl;

import com.kgc.dao.GradeMapper;
import com.kgc.entity.Grade;
import com.kgc.entity.GradeExample;
import com.kgc.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:LiuHao
 * @Date:2020/5/17 11:47
 */
@Service
public class GradeServiceImpl implements GradeService {
    @Autowired
    private GradeMapper gradeMapper;
    public List<Grade> getAllGrade() {
        List<Grade> list = gradeMapper.selectByExample(new GradeExample());
        return list;
    }



}
