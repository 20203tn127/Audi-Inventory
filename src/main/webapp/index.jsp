<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
      href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
      rel="stylesheet"
    />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Inicio</title>
    <link rel="stylesheet" href="./css/navbar.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="containerIndex" >
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

      <div
        class="cardIndex position-absolute top-50 start-50 translate-middle animate">
        <div class="cardText">
          <p>Bienvenido  Audi Polanco.</p>
          <p>Que deseas hacer?</p>
        </div>

        <div class="buttonCard">
          <a href="inventario.jsp">
            <button class="bn5" type="button">Inventario</button>
          </a>

          <a href="./categorias.jsp">
            <button class="bn5" type="button">Categorias</button>
          </a>
        </div>

        <div class="modalFooter">
          <img src="./img/logo.png" alt="" class="imgMFooter" width="90" height="90">
          <p style="margin-left: 10px;">Audi Polanco</p>
        </div>
      </div>






      <div class="row">
        <div class="col-6 bg-Izq">
          <div class="containerAnimation">
            <p>Bienvenido</p>
            <ul class="cambioTextoAnimacion">
              <li>Audi.</li>
              <li>la excelencia.</li>
              <li>la mejor experiencia.</li>
            </ul>
          </div>
        </div>

        <div class="col-6 bg-Der">
          <div class="containerAnimation2">
            <p>Vive</p>
            <ul class="cambioTextoAnimacion2">
              <li>la clase.</li>
              <li>el lujo.</li>
              <li>Audi.</li>
            </ul>
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
