package com.pack1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout1")
public class LogoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String userType = "Customer"; // default

        if (session != null) {
            if (session.getAttribute("AdminBean") != null) {
                userType = "Admin";
            }
            session.invalidate();
        }

        // Remove login cookies if any
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("UserCookie".equals(cookie.getName()) || "AdminCookie".equals(cookie.getName())) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }

        // Set logout message
        request.setAttribute("msg", userType + " logged out successfully!");

        // Forward to a message page
        request.getRequestDispatcher("Logout.jsp").forward(request, response);
    }
}
