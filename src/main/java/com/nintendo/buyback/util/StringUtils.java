package com.nintendo.buyback.util;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 11/03/2017 13:55
 * Project Name: nintendo-buyback
 */
public class StringUtils {
    public static Boolean isNullOrEmpty(String s)
    {
        if(s == null || s.isEmpty())
            return true;

        return false;
    }
}
