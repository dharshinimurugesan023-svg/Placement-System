package Placement;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("student") && password.equals("student123")) {

            response.sendRedirect("process.jsp");

        } else {

            response.setContentType("text/html");

            response.getWriter().println(
                "<script>" +
                "alert('Invalid username or password!');" +
                "window.location='placement.jsp';" +
                "</script>"
            );
        }
    }
}