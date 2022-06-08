package Dao;

import Model.CategoryBean;
import Model.ModelsBean;
import Util.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ModelsDao {
        ResultSet rs;

    public List<ModelsBean> readModelos(){
        List<ModelsBean> modelos = new ArrayList<>();
        System.out.println("Entro a la lectura de modelos");
        try(Connection con = new MySQLConnection().getConnection()){
            try{
                PreparedStatement pstm = con.prepareStatement(
                        "select * from modelos");
                rs=pstm.executeQuery();
                while (rs.next()){
                    modelos.add(new ModelsBean(
                            rs.getInt(1),
                            rs.getString(2)
                    ));
                }
                return modelos;

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
