package co.edu.sena.formulario2687350.model.repository;


import co.edu.sena.formulario2687350.model.Model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Repository<T> {
    List<T> listAllObj() throws SQLException;
    T byIdObj(Integer id) throws SQLException;
    Integer saveObj(T t) throws SQLException;

    Integer SaveObj(Product product) throws SQLException;

    void deleteObj(Integer id) throws SQLException;
    T createObj(ResultSet rs) throws SQLException;
}
