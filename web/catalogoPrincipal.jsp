<%@page import="modelo.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Articulo articulo = (Articulo) session.getAttribute("article");%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>MiCosplay</title>

  <!-- Bootstrap core CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/catalogo.css" rel="stylesheet">
  <link href="css/commons.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>

<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a href="inicio.html"><img class="navbar-brand" src="img/logotipo.png" alt="image logo"></a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a class="elemento" href="perfil.html"><img class="icono" src="img/perfil.png" alt="profile img"></a>
          </li>
          <li>
            <a class="elemento" href="ajustes.html"><img class="icono" src="img/ajustes.png" alt="settings img"></a>
          </li>
        </ul>
        <form class="navbar-form navbar-right">
          <input type="text" class="form-control">
        </form>
      </div>
    </div>
  </nav>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2 sidebar">
        <ul class="nav">
          <li>
            <form>
              <input type="text" class="form-control" placeholder="Buscar artículo...">
            </form>
          </li>
        </ul>
        <ul class="radio_elements">
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Precio Ascendente </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Precio Descendente </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Mejor Valorados </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Más Visitados </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Recientes </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Antiguos </div>
          </li>
          <li>
            <div class="radio navbar-side-text">
              <input type="radio" name="optradio"> Condición </div>
          </li>
        </ul>
        <ul class="nav slider">
          <li>
            <div id="slider">
              <input class="bar" type="range" id="rangeinput" value="50" onchange="rangevalue.value=value" />
              <span class="highlight"></span>
              <output id="rangevalue">50</output>
            </div>
          </li>
        </ul>
      </div>
      <div class="col-sm-9 col-sm-offset-2 col-md-10 main">
        <div class="col-lg-12 col-md-10">
          <div class="opciones row">
            <div class="opciones-tamano_1"> <a href="catalogoPrincipal.html" class="estilo_menu">Todos</a> </div>
            <div class="opciones-tamano_1"> <a href="catalogoPrincipalVenta.html" class="estilo_menu">Ventas</a> </div>
            <div class="opciones-tamano_1"> <a href="catalogoPrincipalEncargo.html" class="estilo_menu">Encargos</a> </div>
            <div class="opciones-tamano_1"> <a href="#" class="estilo_menu">Intercambios</a> </div>
            <div class="opciones-tamano_1"> <a href="#" class="estilo_menu">Donaciones</a> </div>
          </div>
          <div class="opciones row">
            <div class="opciones-tamano_1"> <a href="" class="estilo_menu">Armas</a> </div>
            <div class="opciones-tamano_1"> <a href="" class="estilo_menu">Pelucas</a> </div>
            <div class="opciones-tamano_1"> <a href="#" class="estilo_menu">Trajes</a> </div>
            <div class="opciones-tamano_1"> <a href="#" class="estilo_menu">Accesorios</a> </div>
            <div class="opciones-tamano_1">
              <input type="checkbox" class="dropthing" id="checkbox-toggle">
              <label for="checkbox-toggle" class="estilo_menu glyphicon glyphicon-align-justify"></label>
              <div class="padre">
                <ul>
                  <li class="hijo"><a href="#" class="estilo_menu">Videojuegos</a></li>
                  <li class="hijo"><a href="#" class="estilo_menu">Películas</a></li>
                  <li class="hijo"><a href="#" class="estilo_menu">Cómics</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12 col-md-10">
          <div class="col-md-5 ajuste">
            <div id="carousel1" class="carousel slide center-block alto_carousel" data-ride="carousel">
              <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="img/anna.png" alt="First slide image" class="center-block"> </div>
                <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev"><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel1" role="button" data-slide="next"><span class="sr-only">Next</span></a></div>
            </div>
          </div>
          <div class="col-md-7">
            <h3 class="featurette-heading"><%= articulo.getNombre() %></h3>
            <ul class="ajuste_parrafo">
              <li class="encuadre">
                <p class="espacio enlinea">Visitas: 317</p>
                <p class="espacio enlinea">Estado: En venta</p>
                <p class="enlinea">Condición: Usado</p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Usuario: <%= articulo.getUser().getNick() %></p>
                <p class="enlinea">Valoración de princesadehielo:</p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
              </li>
              <li class="encuadre">
                  <p class="espacio enlinea">Precio: <%= articulo.getPrecio() %></p>
                <p class="espacio enlinea">Subido: 03/04/2016</p>
                <p class="enlinea glyphicon glyphicon-thumbs-up"></p>
              </li>
            </ul>
            <p>
              <h4 class="featurette-heading">Descripción del artículo:</h4> Peluca de la película Frozen del personaje Anna.
            </p>
            <p><a class="btn btn-default" href="" role="button">Contactar</a><a class="btn btn-default btn_detalles" href="#" role="button">Más información</a></p>
          </div>
        </div>
        <div class="col-lg-12 col-md-10">
          <div class="col-md-5 ajuste">
            <div id="carousel2" class="carousel slide center-block alto_carousel" data-ride="carousel2">
              <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="img/blaster.png" alt="First slide image" class="center-block"> </div>
                <a class="left carousel-control" href="#carousel2" role="button" data-slide="prev"><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel2" role="button" data-slide="next"><span class="sr-only">Next</span></a></div>
            </div>
          </div>
          <div class="col-md-7">
            <h3 class="featurette-heading">Blaster Star-Wars</h3>
            <ul class="ajuste_parrafo">
              <li class="encuadre">
                <p class="espacio enlinea">Visitas: 5001</p>
                <p class="espacio enlinea">Estado: Reservado</p>
                <p class="enlinea">Condición: Usado</p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Usuario: greedo</p>
                <p class="enlinea">Valoración de greedo:</p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Precio: 1550 &euro;</p>
                <p class="espacio enlinea">Subido: 21/01/2016</p>
                <p class="enlinea glyphicon glyphicon-thumbs-up"></p>
              </li>
            </ul>
            <p>
              <h4 class="featurette-heading">Descripción del artículo:</h4> Blaster del personaje Han Solo de la saga Star-Wars.
            </p>
            <p><a class="btn btn-default" href="" role="button">Contactar</a> <a class="btn btn-default btn_detalles" href="#" role="button">Más información</a></p>
          </div>
        </div>
        <div class="col-lg-12 col-md-10">
          <div class="col-md-5 ajuste">
            <div id="carousel3" class="carousel slide center-block alto_carousel" data-ride="carousel3">
              <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="img/shepard.png" alt="First slide image" class="center-block"> </div>
                <a class="left carousel-control" href="#carousel3" role="button" data-slide="prev"><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel3" role="button" data-slide="next"><span class="sr-only">Next</span></a></div>
            </div>
          </div>
          <div class="col-md-7">

            <h3 class="featurette-heading">Traje Shepard Mass Effect</h3>
            <ul class="ajuste_parrafo">
              <li class="encuadre">
                <p class="espacio enlinea">Visitas: 16</p>
                <p class="espacio enlinea">Estado: En venta</p>
                <p class="enlinea">Condición: Encargo</p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Usuario: legion</p>
                <p class="enlinea">Valoración de legion:</p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Precio: 1000 &euro;</p>
                <p class="espacio enlinea">Subido: 21/04/2016</p>
                <p class="enlinea glyphicon glyphicon-thumbs-up"></p>
              </li>
            </ul>
            <p>
              <h4 class="featurette-heading">Descripción del artículo:</h4> Traje de la division N7 del personaje Shepard de la Saga Mass Effect.
            </p>
            <p><a class="btn btn-default" href="" role="button">Contactar</a> <a class="btn btn-default btn_detalles" href="#" role="button">Más información</a></p>
          </div>
        </div>
        <div class="col-lg-12 col-md-10">
          <div class="col-md-5 ajuste">
            <div id="carousel4" class="carousel slide center-block alto_carousel" data-ride="carousel4">
              <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="img/elsa.png" alt="First slide image" class="center-block"></div>
                <a class="left carousel-control" href="#carousel4" role="button" data-slide="prev"><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel4" role="button" data-slide="next"><span class="sr-only">Next</span></a></div>
            </div>
          </div>
          <div class="col-md-7">
            <h3 class="featurette-heading">Peluca Elsa Frozen</h3>
            <ul class="ajuste_parrafo">
              <li class="encuadre">
                <p class="espacio enlinea">Visitas: 854</p>
                <p class="espacio enlinea">Estado: En venta</p>
                <p class="enlinea">Condición: Usado</p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Usuario: princesadehielo</p>
                <p class="enlinea">Valoración de princesadehielo:</p>
                <p class="glyphicon glyphicon-star"></p>
                <p class="glyphicon glyphicon-star"></p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Precio: 25 &euro;</p>
                <p class="espacio enlinea">Subido: 03/04/2016</p>
                <p class="enlinea glyphicon glyphicon-thumbs-up"></p>
              </li>
            </ul>
            <p>
              <h4 class="featurette-heading">Descripción del artículo:</h4> Peluca de la película Frozen del personaje Elsa.
            </p>
            <p><a class="btn btn-default" href="" role="button">Contactar</a><a class="btn btn-default btn_detalles" href="#" role="button">Más información</a></p>
          </div>
        </div>
        <div class="col-lg-12 col-md-10">
          <div class="col-md-5 ajuste">
            <div id="carousel4" class="carousel slide center-block alto_carousel" data-ride="carousel4">
              <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="img/cloud.png" alt="First slide image" class="center-block"></div>
                <a class="left carousel-control" href="#carousel4" role="button" data-slide="prev"><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel4" role="button" data-slide="next"><span class="sr-only">Next</span></a></div>
            </div>
          </div>
          <div class="col-md-7">

            <h3 class="featurette-heading">Espada Cloud</h3>
            <ul class="ajuste_parrafo">
              <li class="encuadre">
                <p class="espacio enlinea">Visitas: 1</p>
                <p class="espacio enlinea">Estado: En venta</p>
                <p class="enlinea">Condición: Encargo</p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Usuario: licher</p>
                <p class="enlinea">Valoración de licher:</p>
                <p class="glyphicon glyphicon-star"></p>
              </li>
              <li class="encuadre">
                <p class="espacio enlinea">Precio: 120 &euro;</p>
                <p class="espacio enlinea">Subido: 13/02/2016</p>
                <p class="enlinea glyphicon glyphicon-thumbs-up"></p>
              </li>
            </ul>
            <p>
              <h4 class="featurette-heading">Descripción del artículo:</h4> Espada Cloud de la saga Final Fantasy.
            </p>
            <p><a class="btn btn-default" href="" role="button">Contactar</a> <a class="btn btn-default btn_detalles" href="#" role="button">Más información</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>