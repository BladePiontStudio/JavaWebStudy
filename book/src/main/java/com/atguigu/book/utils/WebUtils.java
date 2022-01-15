package com.atguigu.book.utils;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.Cookie;
import java.util.Map;

public class WebUtils {
    /**
     * 把map中的值注入到javaBean属性中
     */
    public static <T> T copyParamToBean(Map value, T bean) {
        try {
            BeanUtils.populate(bean, value);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    public static int parseInt(String no, int defaultValue) {
        try {
            return Integer.parseInt(no);
        } catch (Exception e) {
            return defaultValue;
        }
    }
}
