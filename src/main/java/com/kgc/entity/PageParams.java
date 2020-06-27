package com.kgc.entity;

/**
 * @Author:LiuHao
 * @Date:2020/5/20 16:21
 */
public class PageParams {
    private Integer page=1;
    private Integer pageSize=3;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
