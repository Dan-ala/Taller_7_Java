package co.edu.sena.taller2_3java.servlets;

import co.edu.sena.taller2_3java.model.User;
import co.edu.sena.taller2_3java.model.repository.Repository;
import co.edu.sena.taller2_3java.model.repository.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerUser")

public class UserRegisterServlet extends HttpServlet {
    //Method - doGet and doPost

    //Get: No es recomendado para un form, ya que no es seguro. (TIENE LÍMITE)
    //POST: NO TIENE LIMITACIONES Y ES SEGURO

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //collect all from data

        //First data:
        String user_firstname=request.getParameter("user_firstname");
        String user_lastname=request.getParameter("user_lastname");
        String user_email=request.getParameter("user_email");
        String user_password=request.getParameter("user_password");

        //fill it up in a User bean

        //#1: Create an object:
        User user=new User(user_firstname,user_lastname,user_email,user_password);

        //call Repository layer and save the user object to DB

        Repository<User> repository = new UserRepositoryImpl();

        int rows = 0;
        //int rows; ->Toma un valor por default: 0

        try {
            rows = repository.saveObj(user);
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
