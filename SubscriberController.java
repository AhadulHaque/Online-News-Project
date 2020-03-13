package controller;

import dao.SubscriberDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by naim on 3/12/2020.
 */
public class SubscriberController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        System.out.println("# "+email);
        SubscriberDao subscriberDao = new SubscriberDao();
        if(subscriberDao.save(email)){
            resp.getWriter().write("Success!");
        }else {
            resp.getWriter().write("Failed!");
        }

    }
}
