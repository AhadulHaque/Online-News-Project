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
//@WebServlet(name = "LoginController")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        AppUserDao appUserDao = new AppUserDao();
        String password = appUserDao.findAppUserPasswordByEmail(email);

        if(password.equals(pass)){
            request.getSession().setAttribute("login_user", email);
            request.getRequestDispatcher("/cpanel.jsp").forward(request, response);
        }else{
            request.setAttribute("error", "Login failed! Wrong email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       System.out.println("Hello....");



        NewsDao newsDao = new NewsDao();
        List<News> newsList =  newsDao.findAllRows();
        System.out.println(newsList);


        //AppUserDao appUserDao = new AppUserDao();

    }
}
