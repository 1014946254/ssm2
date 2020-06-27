package com.kgc.entity;

/**
 * @Author:LiuHao
 * @Date:2020/5/20 16:23
 */
public class StudentCondition extends PageParams {
private String name;
private Integer startAge;
private Integer endAge;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStartAge() {
        return startAge;
    }

    public void setStartAge(Integer startAge) {
        this.startAge = startAge;
    }

    public Integer getEndAge() {
        return endAge;
    }

    public void setEndAge(Integer endAge) {
        this.endAge = endAge;
    }
}
