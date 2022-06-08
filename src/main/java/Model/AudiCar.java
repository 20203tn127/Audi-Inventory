package Model;


public class AudiCar {

    private Integer numeroDeSerieMotor;
    private Integer modeloID;
    private Integer categoriaID;
    private String estatus;
    private String color;
    private String tipoGasolina;
    private int cilindros;
    private String ensambleMotor;
    private String tipoMotor;
    private int potenciaMotor;
    private int plazas;
    private Double peso;
    private int modelo;
    private Double precio;
    private String nombreCategoria;
    private String nombreModelo;

    public AudiCar() {
    }

    public AudiCar(Integer numeroDeSerieMotor, Integer modeloID, Integer categoriaID, String estatus, String color, String tipoGasolina, int cilindros, String ensambleMotor, String tipoMotor, int potenciaMotor, int plazas, Double peso, int modelo, Double precio, String nombreCategoria, String nombreModelo) {
        this.numeroDeSerieMotor = numeroDeSerieMotor;
        this.modeloID = modeloID;
        this.categoriaID = categoriaID;
        this.estatus = estatus;
        this.color = color;
        this.tipoGasolina = tipoGasolina;
        this.cilindros = cilindros;
        this.ensambleMotor = ensambleMotor;
        this.tipoMotor = tipoMotor;
        this.potenciaMotor = potenciaMotor;
        this.plazas = plazas;
        this.peso = peso;
        this.modelo = modelo;
        this.precio = precio;
        this.nombreCategoria = nombreCategoria;
        this.nombreModelo = nombreModelo;
    }

    public AudiCar(Integer numeroDeSerieMotor, Integer modeloID, Integer categoriaID, String estatus, String color, String tipoGasolina, int cilindros, String ensambleMotor, String tipoMotor, int potenciaMotor, int plazas, Double peso, int modelo, Double precio) {
        this.numeroDeSerieMotor = numeroDeSerieMotor;
        this.modeloID = modeloID;
        this.categoriaID = categoriaID;
        this.estatus = estatus;
        this.color = color;
        this.tipoGasolina = tipoGasolina;
        this.cilindros = cilindros;
        this.ensambleMotor = ensambleMotor;
        this.tipoMotor = tipoMotor;
        this.potenciaMotor = potenciaMotor;
        this.plazas = plazas;
        this.peso = peso;
        this.modelo = modelo;
        this.precio = precio;
    }

    public Integer getNumeroDeSerieMotor() {
        return numeroDeSerieMotor;
    }

    public void setNumeroDeSerieMotor(Integer numeroDeSerieMotor) {
        this.numeroDeSerieMotor = numeroDeSerieMotor;
    }

    public Integer getModeloID() {
        return modeloID;
    }

    public void setModeloID(Integer modeloID) {
        this.modeloID = modeloID;
    }

    public Integer getCategoriaID() {
        return categoriaID;
    }

    public void setCategoriaID(Integer categoriaID) {
        this.categoriaID = categoriaID;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTipoGasolina() {
        return tipoGasolina;
    }

    public void setTipoGasolina(String tipoGasolina) {
        this.tipoGasolina = tipoGasolina;
    }

    public int getCilindros() {
        return cilindros;
    }

    public void setCilindros(int cilindros) {
        this.cilindros = cilindros;
    }

    public String getEnsambleMotor() {
        return ensambleMotor;
    }

    public void setEnsambleMotor(String ensambleMotor) {
        this.ensambleMotor = ensambleMotor;
    }

    public String getTipoMotor() {
        return tipoMotor;
    }

    public void setTipoMotor(String tipoMotor) {
        this.tipoMotor = tipoMotor;
    }

    public int getPotenciaMotor() {
        return potenciaMotor;
    }

    public void setPotenciaMotor(int potenciaMotor) {
        this.potenciaMotor = potenciaMotor;
    }

    public int getPlazas() {
        return plazas;
    }

    public void setPlazas(int plazas) {
        this.plazas = plazas;
    }

    public Double getPeso() {
        return peso;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public int getModelo() {
        return modelo;
    }

    public void setModelo(int modelo) {
        this.modelo = modelo;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public String getNombreModelo() {
        return nombreModelo;
    }

    public void setNombreModelo(String nombreModelo) {
        this.nombreModelo = nombreModelo;
    }

    @Override
    public String toString() {
        return "AudiCar{" +
                "numeroDeSerieMotor=" + numeroDeSerieMotor +
                ", modeloID=" + modeloID +
                ", categoriaID=" + categoriaID +
                ", estatus='" + estatus + '\'' +
                ", color='" + color + '\'' +
                ", tipoGasolina='" + tipoGasolina + '\'' +
                ", cilindros=" + cilindros +
                ", ensambleMotor='" + ensambleMotor + '\'' +
                ", tipoMotor='" + tipoMotor + '\'' +
                ", potenciaMotor=" + potenciaMotor +
                ", plazas=" + plazas +
                ", peso=" + peso +
                ", modelo=" + modelo +
                ", precio=" + precio +
                ", nombreCategoria='" + nombreCategoria + '\'' +
                ", nombreModelo='" + nombreModelo + '\'' +
                '}';
    }
}
