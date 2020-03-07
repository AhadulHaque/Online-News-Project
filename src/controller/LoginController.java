package controller;

import dao.AppUserDao;
import dao.NewsDao;
import entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by naim on 3/5/2020.
 */
@WebServlet(name = "LoginController")
public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       System.out.println("Hello....");



        NewsDao newsDao = new NewsDao();
        List<News> newsList =  newsDao.findAllRows();
        System.out.println(newsList);


        //AppUserDao appUserDao = new AppUserDao();

    }
}
