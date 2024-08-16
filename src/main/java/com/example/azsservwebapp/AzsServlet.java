package com.example.azsservwebapp;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "AZSServlet", value = "/azs-servlet")
public class AzsServlet extends HttpServlet {
    private String message;

    public void init() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "qwerty1234");
            message = "SUCCESSFULLY CONNECTED!!! ";
        } catch (SQLException | ClassNotFoundException e ) {
            message = e.getMessage();
        }

        message += "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}
