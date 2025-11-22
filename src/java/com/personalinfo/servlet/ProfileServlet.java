package com.personalinfo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProfileServlet", urlPatterns = { "/ProfileServlet" })
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set character encoding to handle special characters
        request.setCharacterEncoding("UTF-8");

        // Retrieve form data
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        // Retrieve dynamic skill data (arrays)
        String[] skillNames = request.getParameterValues("skillName[]");
        String[] skillLevels = request.getParameterValues("skillLevel[]");

        // Set attributes to forward to JSP
        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("introduction", introduction);

        // Set skill attributes
        request.setAttribute("skillNames", skillNames);
        request.setAttribute("skillLevels", skillLevels);

        // Forward to profile display page
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "ProfileServlet handles personal profile form submissions";
    }
}
