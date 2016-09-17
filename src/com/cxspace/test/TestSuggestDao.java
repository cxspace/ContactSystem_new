package com.cxspace.test;

import com.cxspace.dao.impl.SuggestDao;
import com.cxspace.entity.Suggest;
import com.cxspace.utils.WebUtils;
import org.junit.Test;


/**
 * Created by cxspace on 16-7-28.
 */
public class TestSuggestDao {


    public void save(){

        SuggestDao suggestDao = new SuggestDao();
        Suggest suggest = new Suggest();

        suggest.setId(WebUtils.getRandomId(10));
        suggest.setName("cx");
        suggest.setEmail("4433232@163.com");
        suggest.setContent("内容");
        suggestDao.save(suggest);
    }

    @Test
    public void findAll(){
        System.out.println(new SuggestDao().findAllSuggest());
    }
}
