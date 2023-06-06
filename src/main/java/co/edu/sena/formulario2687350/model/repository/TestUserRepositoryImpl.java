package co.edu.sena.formulario2687350.model.repository;

import java.sql.SQLException;

import co.edu.sena.formulario2687350.model.Model.User;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();

        System.out.println("====== saveObj Insert ======");
        User userInsert = new User();
        userInsert.setUser_firstname("carlos");
        userInsert.setUser_lastname("rojas");
        userInsert.setUser_email("carlos@LoQueSea.com");
        userInsert.setUser_password("jfhbv123654");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("pEpE");
        userInsert.setUser_lastname("perez");
        userInsert.setUser_email("PEPE@correo.com");
        userInsert.setUser_password("46448biviewu");
        repository.saveObj(userInsert);

        System.out.println("===== listAllObj =====");
        repository.listAllObj().forEach((System.out::println));
        System.out.println();

        System.out.println("====== byIdObj ======");
        System.out.println(repository.byIdObj(1));
        System.out.println();


        System.out.println("====== saveObj ======");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("jorge");
        userUpdate.setUser_lastname("palacios");
        userUpdate.setUser_email("jorge@example.com");
        userUpdate.setUser_password("12345asdfg");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ==========");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}// TestUserRepositoryImpl
