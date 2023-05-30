package co.edu.sena.taller2_3java.servlets;

import co.edu.sena.taller2_3java.model.Product;
import co.edu.sena.taller2_3java.model.repository.ProductRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

@WebServlet("/registerProduct")
public class ProductRegisterServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Collect all data
        String product_name=request.getParameter("product_name");
        BigDecimal product_value= BigDecimal.valueOf(Long.parseLong(request.getParameter("product_value")));
        Integer category_id= Integer.valueOf(request.getParameter("category_id"));

        //fill it up in a Product bean
        //CRATE AN OBJECT
        Product product = new Product(product_name,product_value,category_id);

        //Call repository layer and save the product object to DB
        co.edu.sena.taller2_3java.model.repository.
        Repository <Product> repository = new ProductRepositoryImpl();
        int rows=0;

        try {
            rows=repository.saveObj(product);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

        //prepare an information message for product about success or failure of the operation
        String infoMessage = null;
        if (rows==0){
            //infoMessage=("Failure!");
            System.out.println("Failure");
        }else{
            //infoMessage=("Successful!");
            System.out.println("Successful");
        }

        //todo write the message back to the page in client browser

    }
}
