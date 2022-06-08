package ActionController;

import Dao.CarDao;
import Dao.CategoryDao;
import Model.AudiCar;
import Model.CategoryBean;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class CategoryAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    //Declaracion de objeto tipo Categoria
    CategoryDao categoryDao = new CategoryDao();
    private CategoryBean categoryBean;
    private List<CategoryBean> categorias;

    public String consultar() throws Exception {
        categorias = categoryDao.readCategory();
        return SUCCESS;
    }

    public List<CategoryBean> getCategorias() {
        return categorias;
    }

    public void setCategorias(List<CategoryBean> categorias) {
        this.categorias = categorias;
    }

}



/*
    //Declaracion de objeto tipo MazdaCar

    AudiCarDao audiCarDao = new AudiCarDao();
    private AudiCar carBean;
    private List<AudiCar> carros;

    public String consultar() throws Exception {
        carros = audiCarDao.readCar();
        return SUCCESS;
    }

    public List<AudiCar> getCarros() {
        return carros;
    }

    public void setCarros(List<AudiCar> carros) {
        this.carros = carros;
    }
    */