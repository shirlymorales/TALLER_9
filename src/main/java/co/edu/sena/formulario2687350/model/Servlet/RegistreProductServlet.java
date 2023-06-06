package co.edu.sena.formulario2687350.model.Servlet;


import co.edu.sena.formulario2687350.model.Model.Product;
import co.edu.sena.formulario2687350.model.repository.ProductRepositoryImpl;
import co.edu.sena.formulario2687350.model.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register-Product")
public class RegistreProductServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //todo collect all from data
        String product_name = request.getParameter("product_name");
        Integer product_value = Integer.valueOf(request.getParameter("product_value"));
        Integer category_id = Integer.valueOf(request.getParameter("category_id"));
        //todo fill up in a User bean
        Product product = new Product(product_name,product_value,category_id);
        //todo call repository layer and save the objects to BD
        Repository<Product> repository=new ProductRepositoryImpl();
        int rows=0;
        try{
            rows= ((ProductRepositoryImpl) repository).SaveObj(product);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        //todo prepare an information message for user about succes or failure of the operation
        String infoMesaage = null;
        if (rows==0){
            infoMesaage="Ocurrio un eror";
            System.out.println(infoMesaage);
        }
        else {
            System.out.println("registro exitoso");
        }
    }
}
