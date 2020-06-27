package com.kgc.service;

import com.kgc.entity.Grade;

import java.util.List;

/**
 * @Author:LiuHao
 * @Date:2020/5/17 11:45
 */
public interface GradeService {
    //1获取所有的年级，用于下拉框异步刷新
    List<Grade> getAllGrade();

}
