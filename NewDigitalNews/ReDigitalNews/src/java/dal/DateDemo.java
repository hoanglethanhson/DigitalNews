/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class DateDemo extends BaseDAO {

    
    
    public static void main(String[] args) {
        DateUtil util = new DateUtil();
        Date date = util.getDate();
        SimpleDateFormat df = new SimpleDateFormat("MMM - dd - yyyy 'at' hh:mm a");
        java.util.Date d = (java.util.Date) date;
        System.out.println("Date : " + df.format(d));
        System.out.println("Time now : " + df.format(new java.util.Date()));
    }
}
