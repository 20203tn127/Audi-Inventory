package ActionController;

import Dao.CarDao;
import Model.AudiCar;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class CarAction extends ActionSupport {
    private static final long serialVersionUID = 1L;
    String params;
    Map<String,Object> result = new HashMap<>();
    //Declaracion de objeto tipo AudiCar
    CarDao carDao = new CarDao();
    AudiCar carro = new AudiCar();
    private AudiCar carBean;
    private List<AudiCar> carros;

    public String consultar() throws Exception {
        carros = carDao.readCar();
        return SUCCESS;
    }

    public String register(){
        Gson gs = new Gson();
        carro = gs.fromJson(params,AudiCar.class);
        result.put("Auto registrado", carDao.registerCar(carro));
        return SUCCESS;
    }

    public List<AudiCar> getCarros() {
        return carros;
    }

    public void setCarros(List<AudiCar> carros) {
        this.carros = carros;
    }

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    public AudiCar getCarro() {
        return carro;
    }

    public void setCarro(AudiCar carro) {
        this.carro = carro;
    }

    public AudiCar getCarBean() {
        return carBean;
    }

    public void setCarBean(AudiCar carBean) {
        this.carBean = carBean;
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public CarDao getCarDao() {
        return carDao;
    }

    public void setCarDao(CarDao carDao) {
        this.carDao = carDao;
    }
}
