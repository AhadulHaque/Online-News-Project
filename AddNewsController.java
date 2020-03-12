package controller;

import dao.NewsDao;
import entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

/**
 * Created by naim on 3/11/2020.
 */
@MultipartConfig
public class AddNewsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        NewsDao newsDao = new NewsDao();
        String request_type =  req.getParameter("request_type");

        if(request_type.equals("ADD")) {

            final String path = getServletContext().getContextPath();
            System.out.println("#destination : " + path);

            String title = req.getParameter("title");
            Part image = req.getPart("image");
            String description = req.getParameter("description");
            String type = req.getParameter("type");

            News news = new News();
            news.setTitle(title);
            news.setDescription(description);
            news.setType(type);
            news.setPublishedDate(new Date().toLocaleString());
            news.setTotalView(0);

            String img_name = " upload_image_" + type.toLowerCase() + "_" + System.currentTimeMillis() + ".jpg";
            news.setImage(img_name);
            try {
                InputStream is = image.getInputStream();
                OutputStream os = new FileOutputStream(img_name);

                byte[] b = new byte[1024];
                int l = 0;
                while ((l = is.read(b)) != -1) {
                    os.write(b, 0, l);
                }
                os.close();
                is.close();


                newsDao.save(news);


            } catch (Exception e) {
                e.printStackTrace();
            }

        }else if(request_type.equals("DELETE")){

            String id = req.getParameter("id");
            newsDao.delete(Long.parseLong(id));
        }


        req.getRequestDispatcher("cpanel.jsp").forward(req, resp);
    }
}
