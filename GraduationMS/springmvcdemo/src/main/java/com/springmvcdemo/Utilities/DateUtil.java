package com.springmvcdemo.Utilities;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String FormatDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
        return formatter.format(date);
    }

}
