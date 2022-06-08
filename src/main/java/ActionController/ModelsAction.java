package ActionController;
import Dao.CategoryDao;
import Dao.ModelsDao;
import Model.CategoryBean;
import Model.ModelsBean;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class ModelsAction extends ActionSupport{
    private static final long serialVersionUID = 1L;

    ModelsDao modelsDao = new ModelsDao();
    private ModelsBean modelsBean;
    private List<ModelsBean> modelos;

    public String consultar() throws Exception {
        modelos = modelsDao.readModelos();
        return SUCCESS;
    }

    public List<ModelsBean> getModelos() {
        return modelos;
    }

    public void setModelos(List<ModelsBean> modelos) {
        this.modelos = modelos;
    }


}
