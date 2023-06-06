package co.edu.sena.formulario2687350.model.Servlet;


import co.edu.sena.formulario2687350.model.Model.User;
import co.edu.sena.formulario2687350.model.repository.Repository;
import co.edu.sena.formulario2687350.model.repository.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register-user")
public class RegistreUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user_firstname = request.getParameter("user_firstname");
        String user_lastname = request.getParameter("user_lastname");
        String user_email = request.getParameter("user_email");
        String user_password = request.getParameter("user_password");

        User user =new User(user_firstname, user_lastname, user_email, user_password);

        Repository<User> repository = new UserRepositoryImpl();

        int rows = 0;
        try {
            rows = repository.saveObj(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (rows == 0) {
            System.out.println("Ocurrio un error!");
        } else{
            System.out.println("Registro exitoso");
        }

    }
}
