package Dao;

import Model.AudiCar;
import Model.CategoryBean;
import Util.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {

    /*Clase de metodos*/
    private ResultSet rs;

    /*METODO DE CONSULTA*/

    public List<CategoryBean> readCategory(){
        List<CategoryBean> categorias = new ArrayList<>();
        System.out.println("Entro a la lectura de categorias");
        try(Connection con = new MySQLConnection().getConnection()){
            try{
                PreparedStatement pstm = con.prepareStatement(
                        "select * from categorias");
                rs=pstm.executeQuery();
                while (rs.next()){
                    categorias.add(new CategoryBean(
                            rs.getInt(1),
                            rs.getString(2)
                    ));
                }
                return categorias;

            }catch (SQLException e){
                e.getErrorCode();
                System.out.println("Error al consultar");
            }
        }catch (SQLException e){
            e.getErrorCode();
            System.out.println("error en la conexion con la bd");
        }
        return null;
    }











}
