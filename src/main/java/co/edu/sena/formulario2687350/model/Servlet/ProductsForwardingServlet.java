package co.edu.sena.formulario2687350.model.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/producto")
public class ProductsForwardingServlet extends HttpServlet {

            @Override
            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/products.jsp");
                dispatcher.forward(request,response);
            }
        }
