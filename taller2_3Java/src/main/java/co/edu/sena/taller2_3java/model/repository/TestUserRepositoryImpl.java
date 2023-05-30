package co.edu.sena.taller2_3java.model.repository;

import co.edu.sena.taller2_3java.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {

    public static void main(String[] args) throws SQLException {
    Repository<User> repository = new UserRepositoryImpl();

    System.out.println("=========== saveObJ INSERT =============");
    User userInsert = new User();
    userInsert.setUser_firstname("Cristian");
    userInsert.setUser_lastname("Arango");
    userInsert.setUser_email("cricarango1@soy.sena.edu.co");
    userInsert.setUser_password("Cristiano1237");
    repository.saveObj(userInsert);

    userInsert.setUser_firstname("Daniela");
    userInsert.setUser_lastname("Galeano");
    userInsert.setUser_email("galedana@gmail.com");
    userInsert.setUser_password("8564");
    repository.saveObj(userInsert);


    System.out.println("=========== listAllObj =============");
    repository.listAllObj().forEach(System.out::println);
    System.out.println();

    System.out.println("=========== byIdObj =============");
    System.out.println(repository.byIdObj(1));
    System.out.println();

    System.out.println("=========== saveObJ =============");
    User userUpdate = new User();
    userUpdate.setUser_id(2);
    userUpdate.setUser_firstname("Pablo");
    userUpdate.setUser_lastname("Camargo");
    userUpdate.setUser_email("paCamargo@yahoo.com");
    userUpdate.setUser_password("Hi_There456");
    repository.saveObj(userUpdate);
    repository.listAllObj().forEach(System.out::println);
    System.out.println();

    System.out.println("=========== deleteObj =============");
    repository.deleteObj(2);
    repository.listAllObj().forEach(System.out::println);

    }
} //Class
