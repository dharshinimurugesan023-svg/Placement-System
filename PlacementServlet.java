package Placement;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PlacementServlet")
public class PlacementServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String company = request.getParameter("company");
        String role = request.getParameter("role");

        double cgpa = Double.parseDouble(
                request.getParameter("cgpa"));

        String status;

        // Minimum eligibility criteria
        if (cgpa >= 6.5) {
            status = "SELECTED FOR PLACEMENT";
        } else {
            status = "NOT ELIGIBLE";
        }

        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("department", department);
        request.setAttribute("company", company);
        request.setAttribute("role", role);
        request.setAttribute("cgpa", cgpa);
        request.setAttribute("status", status);

        request.getRequestDispatcher("selection.jsp")
               .forward(request, response);
    }
}