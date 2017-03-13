package com.nintendo.buyback.util;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 07:38
 * Project Name: nintendo-buyback
 */
public class DateUtils {
    public static LocalDateTime todayOf(int hour, int min)
    {
        return LocalDateTime.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), LocalDate.now().getDayOfMonth(), hour, min);
    }

    public static Boolean isNullOrEmpty(LocalDateTime localDateTime)
    {
        if(localDateTime == null || localDateTime.toString().isEmpty() || localDateTime.equals(LocalDateTime.MIN))
            return true;

        return false;
    }
}
