package co.edu.sena.formulario2687350.model.Servlet;

import co.edu.sena.formulario2687350.model.Model.Category;
import co.edu.sena.formulario2687350.model.repository.CategoryRepositoryImpl;
import co.edu.sena.formulario2687350.model.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

public class RegistreCategoryServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String category_name = request.getParameter("category_name");



        Category category = new Category();
        category.setCategory_name(category_name);


        Repository<Category> repository = new CategoryRepositoryImpl();
        int rows = 0;
        try {
            repository.saveObj(category);
        } catch (SQLException e) {
            e.printStackTrace();
        }


        if(rows==0){
            System.out.println("Ocurrio un error");
        }else{
            System.out.println("Registro exitoso");
        }

    }
}
