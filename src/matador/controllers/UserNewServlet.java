package matador.controllers;

import matador.persistence.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by matr on 15.03.14.
 */
@WebServlet("/create")
public class UserNewServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = new User();

        req.setAttribute("user", user);
        RequestDispatcher dispatch = req.getRequestDispatcher("/WEB-INF/createuser.jsp");
        dispatch.forward(req, resp);

    }
}
