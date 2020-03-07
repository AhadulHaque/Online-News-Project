package database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by naim on 3/5/2020.
 */
public class MyDbConnection {

    private static MyDbConnection myDbConnection = null;
    private Connection connection = null ;

    private MyDbConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/news_portal","root","");
            System.out.println("Database Connected....");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Connection getConnection(){

        if(myDbConnection==null){
            myDbConnection = new MyDbConnection();
        }
        return myDbConnection.connection;
    }

}
