package dao;

import database.MyDbConnection;
import entity.News;
import entity.Subscriber;
import service.SendEmail;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by naim on 3/12/2020.
 */
public class SubscriberDao {

    private Connection con;
    private ResultSet rs;

    public SubscriberDao(){
        con = MyDbConnection.getConnection();
    }

    public boolean save(String email){
        try{
            con.createStatement().execute("INSERT INTO subscriber VALUES ('"+email+"')");
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    public List<Subscriber> findAllSubscriber()
    {
        List<Subscriber> subscribers = new ArrayList<>();
        try{
            rs = con.createStatement().executeQuery("SELECT * FROM subscriber");
            while (rs.next()){
                subscribers.add(new Subscriber(rs.getString(1)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return subscribers;
    }

    public void sendEmailToAllSubscriber(News news)
    {
        List<Subscriber> subscribers = findAllSubscriber();
        for(Subscriber subscriber : subscribers) {
            SendEmail.sendEmail(subscriber.getEmail(),"News365 has been published a new news","News Title : "+news.getTitle()+"</a>\n"+news.getDescription());
        }

    }

}
