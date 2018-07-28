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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class DateUtil extends BaseDAO {
    public Date getDate() {
        Date date = null;
        try {
            String query = "Select * From Date";
            
            PreparedStatement s = connection.prepareStatement(query);
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                date = rs.getDate("Date");
                return date;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DateDemo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return date;
    }
}
