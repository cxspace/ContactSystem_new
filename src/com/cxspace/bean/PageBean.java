package com.cxspace.bean;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class PageBean <T>{

    // 当前页
    private int currentPage = 1;

    //查询返回的行数
    private int pageCount = 4;

    //总记录数
    private int totalCount;

    //总页数 = 总记录数 / 每页显示行数
    private int totalPage;

    //分页查到的数据
    private List<T> pageData;

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    //返回总页数
    public int getTotalPage(){

        if (totalCount%pageCount == 0){
            totalPage = totalCount / pageCount;
        }else {
            totalPage = totalCount / pageCount + 1;
        }

        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getPageData() {
        return pageData;
    }

    public void setPageData(List<T> pageData) {
        this.pageData = pageData;
    }
}
