package co.edu.sena.taller2_3java.servlets;

import co.edu.sena.taller2_3java.model.Category;
import co.edu.sena.taller2_3java.model.repository.CategoryRepositoryImpl;
import co.edu.sena.taller2_3java.model.repository.Repository;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerCategory")
public class CategoryRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Collecting data
        String category_name=request.getParameter("category_name");

        //CREATING AN OBJ
        Category category = new Category(category_name);

        ////call Repository layer and save the user object to DB
        Repository<Category> repository = new CategoryRepositoryImpl();

        int rows = 0;
        //int rows; ->Toma un valor por default: 0

        try {
            rows = repository.saveObj(category);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        //prepare an information message for user about success or failure of the operation

        String infoMassage = null;
        if (rows==0){
            //infoMessage=("Failure!");
            System.out.println("Failure");
        }else{
            //infoMessage=("Successful!");
            System.out.println("Successful");
        }

        //todo write the message back to the page in client browser

    }

}//UserRegisterServlet