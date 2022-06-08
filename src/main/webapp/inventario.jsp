<!DOCTYPE html>
<html ng-app="inventario">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet"/>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Inventario</title>
    <link rel="stylesheet" href="./css/navbar.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
          crossorigin="anonymous"/>
</head>
<body ng-controller="controllerInventario">
<div class="containerIndex">

    <div class="barraNav">
        <a href="index.jsp">
            <img
                    src="./img/logo.png"
                    alt=""
                    width="70px"
                    height="25px"
                    class="imgLogo"
            />
        </a>

        <div id="barraLateral">
            <input type="checkbox" id="active" />
            <label for="active" class="menu-btn" style="margin-top: -16px"
            ><span></span
            ></label>
            <label for="active" class="close"></label>

            <div class="wrapper">
                <ul>
                    <li>
                        <a href="index.jsp">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a>
                    </li>
                    <li><a href="inventario.jsp">Inventario</a></li>
                    <li><a href="#">Categoria</a></li>
                </ul>
            </div>
        </div>
    </div>


    <div class="row  bg-inventario" style="background: linear-gradient(180deg, rgba(15, 15, 15, 0.2) 84.21%, rgba(41, 41, 41, 0) 100%), url('./img/audi_a3_sportback_45_tfsi_e_s_line_2021_5k_2-HD.jpg');height: 100vh;
  width: 100vw;
  background-position: center center;
  background-size: cover;">

        <div class="col-2">
        </div>






        <div class="col-8 position-absolute top-50 start-50 translate-middle animate">

            <div class="col-12" ng-if="(data.carros) == '' ">
                <h3 style="color: white">Actualmente no existen registros de unidad en el inventario.</h3>
            </div>


            <h1 style="color: white">Inventario</h1>
            <table class="table table-dark table-striped table-hover ">
                <thead>
                <tr>
                    <th scope="col">Numero de Serie:</th>
                    <th scope="col">Modelo:</th>
                    <th scope="col">Categoria: </th>
                    <th scope="col">Estatus: </th>
                    <th scope="col">Color:</th>
                    <th scope="col">Tipo de Gasolina:</th>
                    <th scope="col">No.Cilindros:</th>
                    <th scope="col">Ensamble de Motor:</th>
                    <th scope="col">Tipo de Motor:</th>
                    <th scope="col">Potencia del Motor (HP):</th>
                    <th scope="col">Plazas:</th>
                    <th scope="col">Peso:</th>
                    <th scope="col">Modelo (Year):</th>
                    <th scope="col">Precio:</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="c in data.carros | filter: find" >
                    <th>{{c.numeroDeSerieMotor}}</th>
                    <td>{{c.nombreModelo}}</td>
                    <td>{{c.nombreCategoria}}</td>
                    <td>{{c.estatus}}</td>
                    <td>{{c.color}}</td>
                    <td>{{c.tipoGasolina}}</td>
                    <td>{{c.cilindros}}</td>
                    <td>{{c.ensambleMotor}}</td>
                    <td>{{c.tipoMotor}}</td>
                    <td>{{c.potenciaMotor}}</td>
                    <td>{{c.plazas}}</td>
                    <td>{{c.peso}}</td>
                    <td>{{c.modelo}}</td>
                    <td>{{c.precio}}</td>
                </tr>
                </tbody>


            </table>

                <button class="bn5" type="button" data-bs-toggle="modal" data-bs-target="#modalRegister">Anadir Unidad</button>

                <button class="bn5" type="button" data-bs-toggle="modal" data-bs-target="#modalUpdate">Modificar Unidad</button>

        </div>

        <div class="col-2">

        </div>

    </div>

</div>

<script>

    // Define the module
    let miInventario = angular.module('inventario', []);
    // Define the controller on the  module
    miInventario.controller('controllerInventario', function ($scope,$http) {

            $http({
                method: 'GET',
                url: 'http://localhost:8080/audi/findAll.action'
            }).then(function successCallback(response) {
                $scope.data = response.data;
                console.log(response.data)
            }, function errorCallback(response) {
                console.log('Error al consultar')
            });

            $http({
                method: 'GET',
                url: 'http://localhost:8080/audi/findAllCategories.action'
            }).then(function successCallback(response) {
                $scope.dataCategory = response.data;
                console.log(response.data)
            }, function errorCallback(response) {
                console.log('Error al consultar')
            });

            $http({
                method: 'GET',
                url: 'http://localhost:8080/audi/findAllModels.action'
            }).then(function successCallback(response) {
                $scope.dataModels = response.data;
                console.log(response.data)
            }, function errorCallback(response) {
                console.log('Error al consultar')
            });


            $scope.registerCar =function(){
                Swal.fire({
                    title: 'Seguro que deseas insertar una nueva unidad?',
                    text: "No podras modificar el numero de Serie de Motor",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si, insertar'
                }).then((result) => {
                    $http({
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded',
                        },
                        url: 'http://localhost:8080/audi/registerCar.action',
                        data: "params=" + JSON.stringify($scope.car)
                    })

                    if (result.isConfirmed) {
                        Swal.fire(
                            'Ingresado',
                            'Ingresado correctamente',
                            'success'
                        )
                    }
                })
            }




















    });



</script>












<!-- Modal Register -->
<div class="modal fade modal-lg animate" id="modalRegister" tabindex="-1" aria-labelledby="modalRegister" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRegisterLabel">Agregar una nueva unidad: </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body">

                <div class="row">
                    <div class="col-6 mx-auto">

                        <form name="formRegister" method="post">
                            <div class="mb-3">
                                <label for="numeroDeSerieMotor" class="form-label">Numero de Serie del Motor:</label>
                                <input type="number" class="form-control" id="numeroDeSerieMotor" aria-describedby="numeroDeSerieHelp" ng-model="car.numeroDeSerieMotor" name="car.numeroDeSerieMotor">
                                <div id="numeroDeSerieHelp" class="form-text">El numero de serie del motor debe ser unico e irrepetible.</div>
                            </div>
                            <div class="mb-3">
                                <label for="modeloID" class="form-label">Modelo: </label>
                                <select id="modeloID" class="form-select" ng-model="car.modeloID" name="car.modeloID">
                                    <option value="" disabled selected hidden>Selecciona el modelo: </option>
                                    <option ng-repeat="item in dataModels.modelos" value="{{item.idModelo}}">{{item.nombreModelo}}</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="categoriaID" class="form-label">Categoria: </label>
                                <select id="categoriaID" ng-model="car.categoriaID"  name="car.categoriaID" class="form-select" >
                                    <option value="" disabled selected hidden>Selecciona la categoria:</option>
                                    <option ng-repeat="item in dataCategory.categorias" value="{{item.idCategoria}}">{{item.nombreCategoria}}</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="estatus" class="form-label">Estatus: </label>
                                <select id="estatus" class="form-select" ng-model="car.estatus" name="car.estatus">
                                    <option disabled selected hidden> Selecciona el estatus: </option>
                                    <option value="Exhibicion">Exhibicion</option>
                                    <option value="Dentro del concesionario">Dentro del concesionario</option>
                                    <option value="Vendido">Vendido</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="color" class="form-label">Color:</label>
                                <select id="color" class="form-select"  ng-model="car.color" name="car.color">
                                    <option disabled selected hidden>Selecciona el color:</option>
                                    <option value="Negro obscuro">Negro obscuro</option>
                                    <option value="Blanco de prusia">Blanco de prusia</option>
                                    <option value="Plata metalico">Plata metalico</option>
                                    <option value="Gris azure">Gris azure</option>
                                    <option value="Rojo antracita">Rojo antracita</option>
                                    <option value="Azul de carreras">Azul de carreras</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="tipoGasolina" class="form-label">Tipo de gasolina:</label>
                                <select id="tipoGasolina" class="form-select" ng-model="car.tipoGasolina" name="car.tipoGasolina">
                                    <option disabled selected hidden>Selecciona el tipo de gasolina:</option>
                                    <option value="87 Octanos">87 Octanos</option>
                                    <option value="92 Octanos">92 Octanos</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="cilindros" class="form-label">Cilindraje:</label>
                                <select id="cilindros" class="form-select" ng-model="car.cilindros" name="car.cilindros" required>
                                    <option value="">Selecciona el numero de cilindros:</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="6">6</option>
                                    <option value="8">8</option>
                                    <option value="10">10</option>
                                    <option value="12">12</option>
                                    <option value="0">0</option>
                                </select>
                                <span ng-show="formRegister.cilindrajeSelect.$invalid">Debes seleccionar una opción valida.</span>
                            </div>

                            <div class="mb-3">
                                <label for="ensambleMotor" class="form-label">Ensamble de motor:</label>
                                <select id="ensambleMotor" class="form-select" ng-model="car.ensambleMotor" name="car.ensambleMotor">
                                    <option disabled selected hidden>Selecciona el ensamble del motor:</option>
                                    <option value="En V">En V</option>
                                    <option value="En linea">En linea</option>
                                    <option value="Electrico">Electrico</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="tipoMotor" class="form-label">Tipo de motor:</label>
                                <select id="tipoMotor" class="form-select" ng-model="car.tipoMotor" name="car.tipoMotor">
                                    <option disabled selected hidden>Selecciona el tipo del motor:</option>
                                    <option value="Aspirado">Aspirado</option>
                                    <option value="Turbo">Turbo</option>
                                    <option value="Electrico">Electrico</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="potenciaMotor" class="form-label">Potencia del motor:</label>
                                <input type="number" class="form-control" id="potenciaMotor" aria-describedby="potenciaMotorHelp" ng-model="car.potenciaMotor" name="car.potenciaMotor">
                                <div id="potenciaMotorHelp" class="form-text">La Potencia del motor debe estar escrita en caballos de fuerza(Hp) numero entero.</div>
                            </div>

                            <div class="mb-3">
                                <label for="plazas" class="form-label">Plazas:</label>
                                <select id="plazas" class="form-select" ng-model="car.plazas" name="car.plazas">
                                    <option disabled selected hidden>Selecciona el numero de plazas:</option>
                                    <option value="2">3</option>
                                    <option value="4">4</option>
                                    <option value="6">6</option>
                                    <option value="8">8</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="peso" class="form-label">Peso:</label>
                                <input type="number" class="form-control" id="peso" aria-describedby="pesoHelp" ng-model="car.peso" name="car.peso">
                                <div id="pesoHelp" class="form-text">El peso debe incluir punto decimal y debe estar en toneladas.</div>
                            </div>

                            <div class="mb-3">
                                <label for="year" class="form-label">Modelo:</label>
                                <input for="year" class="form-control" id="year" aria-describedby="yearHelp" type="number" ng-model="car.year" name="car.year">
                                <div id="yearHelp" class="form-text">Indicar SOLO el year del vehiculo</div>
                            </div>

                            <div class="mb-3">
                                <label for="precio" class="form-label">Precio comercial:</label>
                                <input for="precio" class="form-control" id="precio" aria-describedby="precioHelp" type="number" ng-model="car.precio" name="car.precio">
                                <div id="precioHelp" class="form-text">Indicar el precio del vehiculo en miles de pesos Mexicanos.</div>
                            </div>

                            <div class="modal-footer">
                                <button type="submit" class="bn5"  ng-click="registerCar()">Agregar Unidad</button>
                                <button class="bn5" type="button" data-bs-dismiss="modal">Salir</button>
                            </div>

                        </form>

                    </div>
                </div>



            </div>

        </div>
    </div>
</div>



<!-- Modal Update -->
<div class="modal fade modal-lg animate" id="modalUpdate" tabindex="-1" aria-labelledby="modalUpdate" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalUpdateLabel">Modal Updatear</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>





















<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>




</body>
</html>
