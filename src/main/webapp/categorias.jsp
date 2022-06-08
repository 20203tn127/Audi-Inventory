<!DOCTYPE html>
<html ng-app="inventario">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet"/>
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


    <div class="row  bg-inventario" style="background: linear-gradient(180deg, rgba(15, 15, 15, 0.2) 84.21%, rgba(41, 41, 41, 0) 100%), url('./img/a77.png');height: 100vh;
  width: 100vw;
  background-position: center center;
  background-size: cover;">

        <div class="col-2">
        </div>






        <div class="col-8 position-absolute top-50 start-50 translate-middle animate">
                <!--
            <div class="col-12" ng-if="(data.carros | filter : find) == '' ">
                <h3 style="color: white">Actualmente no existen registros de categorias en el sistema.</h3>
            </div>
                -->

            <h1 style="color: white">Gestion de Categorias</h1>
            <table class="table table-dark table-striped table-hover ">
                <thead>
                <tr>
                    <th scope="col">ID:</th>
                    <th scope="col">Nombre:</th>
                </tr>
                </thead>
                <tbody>

               <tr ng-repeat="c in data.carros | filter: find" >
                    <th>1</th>
                   <th>Segmento C - Coupe</th>
                </tr>
               <tr ng-repeat="c in data.carros | filter: find" >
                   <th>2</th>
                   <th>Segmento F- Sedan</th>
               </tr>


                </tbody>


            </table>

            <button class="bn5" type="button" data-bs-toggle="modal" data-bs-target="#modalRegisterCategory">Anadir Categoria</button>

            <button class="bn5" type="button" data-bs-toggle="modal" data-bs-target="#modalUpdateCategory">Modificar Categoria</button>

        </div>

        <div class="col-2">

        </div>

    </div>

</div>

<script>
    /*
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

    });*/
</script>












<!-- Modal Register -->
<div class="modal fade modal-lg animate" id="modalRegisterCategory" tabindex="-1" aria-labelledby="modalRegister" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRegisterLabel">Modal Registro</h5>
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



<!-- Modal Update -->
<div class="modal fade modal-lg animate" id="modalUpdateCategory" tabindex="-1" aria-labelledby="modalUpdate" aria-hidden="true">
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
        crossorigin="anonymous"
></script>
</body>
</html>
