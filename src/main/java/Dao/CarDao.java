package Dao;

import Model.AudiCar;
import Util.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarDao {
    /*Clase de metodos*/
    private ResultSet rs;
    /*METODO DE CONSULTA*/
    public List<AudiCar> readCar(){
        List<AudiCar> carros = new ArrayList<>();
        System.out.println("Entro a la lectura de carros");
        try(Connection con = new MySQLConnection().getConnection()){
            try{
                PreparedStatement pstm = con.prepareStatement(
                        "select * from auto JOIN categorias on auto.categoriaID = categorias.idCategoria join modelos on auto.modeloID = modelos.idModelo;");
                rs=pstm.executeQuery();
                while (rs.next()){
                    carros.add(new AudiCar(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getInt(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getInt(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getInt(10),
                            rs.getInt(11),
                            rs.getDouble(12),
                            rs.getInt(13),
                            rs.getDouble(14),
                            rs.getString("nombreCategoria"),
                            rs.getString("nombreModelo")
                    ));
                }
                return carros;

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


    public boolean registerCar(AudiCar audiCar){
        try(Connection con = new MySQLConnection().getConnection()){
            try{
                PreparedStatement pstm = con.prepareStatement(" INSERT INTO auto (numeroDeSerieMotor, " +
                        "modeloID,categoriaID,estatus,color,tipoGasolina,cilindros,ensambleMotor," +
                        "tipoMotor,potenciaMotor,plazas,peso,modelo,precio) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);");

                pstm.setInt(1, audiCar.getNumeroDeSerieMotor());
                pstm.setInt(2, audiCar.getModeloID());
                pstm.setInt(3, audiCar.getCategoriaID());
                pstm.setString(4, audiCar.getEstatus());
                pstm.setString(5, audiCar.getColor());
                pstm.setString(6, audiCar.getTipoGasolina());
                pstm.setInt(7, audiCar.getCilindros());
                pstm.setString(8, audiCar.getEnsambleMotor());
                pstm.setString(9, audiCar.getTipoMotor());
                pstm.setInt(10,audiCar.getPotenciaMotor());
                pstm.setInt(11,audiCar.getPlazas());
                pstm.setDouble(12, audiCar.getPeso());
                pstm.setInt(13, audiCar.getModelo());
                pstm.setDouble(14, audiCar.getPrecio());

                boolean x= pstm.execute();

                if (x){
                    return true;
                }


            }catch (Exception e){
                e.printStackTrace();
                System.out.println("Error al insertar");
            }

        }catch (Exception ex){

            System.out.println("Error con la conexion");
        }
            return false;
    }
}
