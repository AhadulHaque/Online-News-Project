package dao;

import database.MyDbConnection;
import entity.AppUser;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 * Created by naim on 3/5/2020.
 */
public class AppUserDao  {

    private Connection con;
    private ResultSet rs;

    public AppUserDao(){
        con = MyDbConnection.getConnection();
    }

    public String findAppUserPasswordByEmail(String email){
        String password = null;
        try{
            rs = con.createStatement().executeQuery("SELECT password FROM AppUser WHERE email='"+email+"'");
            rs.next();
            password = rs.getString(1);
        }catch (Exception e){
            e.printStackTrace();
        }
        return password;
    }

}
