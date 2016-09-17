package com.cxspace.dao;

import com.cxspace.entity.Suggest;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public interface ISuggestDao {

    //保存建议信息
    public boolean save(Suggest suggest);

    public List<Suggest> findAllSuggest();
}
