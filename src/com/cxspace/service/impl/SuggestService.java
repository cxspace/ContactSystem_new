package com.cxspace.service.impl;

import com.cxspace.dao.impl.SuggestDao;
import com.cxspace.entity.Suggest;
import com.cxspace.service.ISuggestService;

/**
 * Created by cxspace on 16-7-29.
 */
public class SuggestService implements ISuggestService{


    @Override
    public boolean save(Suggest suggest) {
        SuggestDao suggestDao = new SuggestDao();
        return suggestDao.save(suggest);
    }
}
