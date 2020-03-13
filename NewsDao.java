package dao;

import database.MyDbConnection;
import entity.News;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by naim on 3/5/2020.
 */
public class NewsDao  {

    private Connection con;
    private ResultSet rs;

    public NewsDao(){
         con = MyDbConnection.getConnection();
    }

    public boolean save(News news)
    {
        try{
            String sql = "INSERT INTO `news`(`image`, `title`, `description`, `totalView`, `publishedDate`, `type`) VALUES ('"+news.getImage()+"','"+news.getTitle()+"','"+news.getDescription()+"','"+news.getTotalView()+"','"+news.getPublishedDate()+"','"+news.getType()+"')";
            con.createStatement().execute(sql);
            new SubscriberDao().sendEmailToAllSubscriber(news);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    public List<News> findAllRows(){
        String sql = "select * from news";
        return fetchNewsList(sql);
    }

    public List<News> findTopTenRows(){
        return fetchNewsList("select * from news limit 10");
    }

    public News findNewsById(long id) throws SQLException {
        String sql = "select * from news where id="+id;
        News news = fetchSingleNews(sql);
        if(news!=null){
            String sql2 = "UPDATE news set totalView="+(news.getTotalView()+1)+" WHERE id = "+id;
            con.createStatement().execute(sql2);
        }
        return news;
    }

    public List<News> findPopulerNews()
    {
        String sql = "SELECT * FROM news ORDER by totalView DESC LIMIT 10";
        return fetchNewsList(sql);
    }

    public List<News> findNewsByType(String type)
    {
        return fetchNewsList("SELECT * FROM `news` WHERE type = '"+type+"'");
    }


    private News fetchSingleNews(String sql){
        News news = null;
        try {
            rs = con.createStatement().executeQuery(sql);
            rs.next();
            news =  new News(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4),
                    rs.getLong(5), rs.getString(6), rs.getString(7));



        }catch (Exception e){
            e.printStackTrace();
        }
        return news;
    }


    private List<News> fetchNewsList(String sql){

        List<News> newsList = new ArrayList<>();
        try {
            rs = con.createStatement().executeQuery(sql);
            while (rs.next()){
                newsList.add(new News(rs.getLong(1), rs.getString(2), rs.getString(3)
                        , rs.getString(4).length()>100 ? rs.getString(4).substring(0,100) : rs.getString(4),
                        rs.getLong(5), rs.getString(6), rs.getString(7)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return newsList;
    }


    public void delete(long id){
        try{
            con.createStatement().execute("DELETE FROM news WHERE id="+id);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
