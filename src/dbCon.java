
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class dbCon {

    static Connection connection() {
         try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolms", "root", "");
           return con;
       }
       catch(Exception e)
       {
           System.out.println(e);
           return null;
       }
    }
    
}
