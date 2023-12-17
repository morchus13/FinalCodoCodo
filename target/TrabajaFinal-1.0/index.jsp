<!DOCTYPE html>
<html lang="en">
        <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Mi Pizzeria</title>
                <link rel="stylesheet" href="estilo1.css">

                <!-- LETRAS -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Croissant+One&family=Gochi+Hand&display=swap" rel="stylesheet">

                <!-- Boostrap -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

                <!-- Iconos -->
                <script src="https://kit.fontawesome.com/8930a20a4e.js" crossorigin="anonymous"></script>

        </head>

        <body>

                <!-- Icono - link de wasap -->
                <a href="https://api.whatsapp.com/send?phone=+5492364614272" class="btn-wsp" target="_blank">
                        <i class="fa fa-whatsapp icono"></i>	
                </a>

                <!-- Barra de Navegacion -->

                <header>

                        <nav class="navbar navbar-expand-md navbar-dark bg-dark">	

                                <div class="container-fluid m-3">
                                        <!-- Icono y Titulo principal -->
                                        <img src="img/pizza1.png" width="80px" alt="Icono de Pizza" class="iconoPizza" style="border-radius: 50%; opacity: 0.9;">
                                        <a class="navbar-brand m-2" id="titulo" href="#">PIZZAS LA MUZZA</a>
                                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                                                <span class="navbar-toggler-icon btn_nav"></span>
                                        </button>

                                        <!-- Barra desplegable -->
                                        <div class="collapse navbar-collapse " id="navbarText">
                                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-center m-2">
                                                        <li class="nav-item bg-success m-1">
                                                                <a class="nav-link active " aria-current="page" href="#">Home</a>
                                                        </li>

                                                        <li class="nav-item bg-success m-1">
                                                                <a class="nav-link" href="#">Comprar</a>
                                                        </li>

                                                        <li class="nav-item dropdown bg-success m-1">
                                                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                        Nuestars Pizzas</a>
                                                                <ul class="dropdown-menu bg-success">
                                                                        <li><a class="dropdown-item " href="#">Pizza Muzza</a></li>
                                                                        <li><a class="dropdown-item" href="#">Pizza 4 Quesos</a></li>
                                                                        <li><a class="dropdown-item" href="#">Pizza Especial</a></li>
                                                                </ul>
                                                        </li>

                                                </ul>
                                                <span class="navbar-text">
                                                        El sabor de una pizza <br> encontralo aca...
                                                </span>
                                        </div>
                                </div>
                        </nav>
                </header>

                <!-- SECCION MAIN:
                1.Seccion Superior con imagen del local
                2.Seccion medio con Tarjetas
                3.Seccion inferior con carrusel -->

                <main>
                        <!-- Imagen principal superior -->
                        <section>					
                                <div class="contenedor">			
                                        <!-- <img src="images/local.jpg" alt="local" class="imagenLocal"> -->
                                        <div class="cuerpo">
                                                <h3>Los especialistas de las Pizzas</h3>
                                                <p>La pizza perfecta debe tener algunas características imprescindibles: una base crujiente, unos bordes perfectamente tostados, suficiente queso (bien derretido), salsa y una serie de ingredientes que la complementen.</p>
                                                <div class="caja1">
                                                        <!-- DE ESTA FORMA NO ME ANDUVO
                                                        <form accion="Controlador" method="get">
                                                                <input type="hidden" >
                                                                <button type="submit" name="accion" value="listar">Realiza Pedido</button>
                                                        </form>
                                                        --> 
                                                        <a class="btn btn-success m-2" href="Controlador?accion=listar">Hace tu Pedido</a>
                                                        <!--<button class="boton1">Pedido Online</button>-->
                                                </div>
                                        </div>
                                </div>			
                        </section>

                        <!-- Tarjetas con Boostrap y retoque mio -->
                        <section>
                                <div class="contenedor-tarjeta">
                                        <div class="tarjeta">
                                                <img src="images/cocinero1.jpg" alt="">
                                                <h3>Nuestro cocinero</h3>
                                                <p>Especialista en la pizza italiana con años de experiencia que abalan al mejor cheff de nuestro pais es el rubro y los clientes que lo recomiendan.</p>
                                                <button class="boton-tarjeta">Ver mas info...</button>
                                        </div>

                                        <div class="tarjeta">
                                                <img src="images/cocinero2.jpg" alt="">
                                                <h3>Nuestro cocinero</h3>
                                                <p>Especialista en la pizza italiana con años de experiencia que abalan al mejor cheff de nuestro pais es el rubro y los clientes que lo recomiendan.</p>
                                                <button class="boton-tarjeta">Ver mas info...</button>
                                        </div>

                                        <div class="tarjeta">
                                                <img src="images/cocinero3.jpg" alt="">
                                                <h3>Nuestro cocinero</h3>
                                                <p>Especialista en la pizza italiana con años de experiencia que abalan al mejor cheff de nuestro pais es el rubro y los clientes que lo recomiendan.</p>
                                                <button class="boton-tarjeta">Ver mas info...</button>
                                        </div>

                                </div>
                        </section>


                        <!-- Main inferior con carrusel -->
                        <section>

                                <div id="carouselExample" class="carousel slide m-5">

                                        <div class="carousel-inner bg-dark border border-2 border-success p-2 container-fluid">
                                                <div class="carousel-item active">
                                                        <img src="images/pizza1.jpg" class="d-block" alt="...">
                                                        <!-- style="display:flex; margin:auto;width: 70%; height:300px;min-width:400px;" -->
                                                </div>
                                                <div class="carousel-item img-fluid">
                                                        <img src="images/pizza2.jpg" class="d-block" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                        <img src="images/pizza4.jpg" class="d-block" alt="...">
                                                </div>
                                        </div>

                                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                        </button>
                                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                        </button>
                                </div>
                        </section>

                        <!-- Seccion de imagen con la ubicacion de maps -->
                        <section>
                                <div class="caja">

                                        <div class="left">
                                                <img src="https://lh3.googleusercontent.com/p/AF1QipPV-ivolbQR9S9-eGs2VBrGLvfyyt3PlKXTbsx9=w1080-h608-p-no-v0" alt="">
                                        </div>

                                        <div class="right">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2762.0064133566866!2d-60.950073791673354!3d-34.58904520615495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95b8eb2c389beb49%3A0x47599f32145c1315!2sQUE%20PIZZA%20Pizza%20Libre!5e0!3m2!1ses-419!2sar!4v1696022573075!5m2!1ses-419!2sar" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </div>
                                </div>

                        </section>



                </main>

                <!-- Mi footer con 3 partes izq derecha y central - iconos y Textos de la empresa -->
                <footer class="footer-contenedor">

                        <div class="footer-left">

                                <h3>Pizza<span>LaMuzza</span></h3>

                                <p class="footer-links">
                                        <a href="#" class="link-1">Home</a>

                                        <a href="#">Blog</a>

                                        <a href="#">Pricing</a>

                                        <a href="#">About</a>

                                        <a href="#">Faq</a>

                                        <a href="#">Contact</a>
                                </p>

                                <p class="footer-company-name">La Muzza © 2015</p>
                        </div>

                        <div class="footer-center">

                                <div>
                                        <i class="fa fa-map-marker"></i>
                                        <p><span>Belgrano 239, B6000</span>  Junín, Provincia de Buenos Aires</p>
                                </div>

                                <div>
                                        <i class="fa fa-phone"></i>
                                        <p>+5492364614272</p>
                                </div>

                                <div>
                                        <i class="fa fa-envelope"></i>
                                        <p><a href="mailto:nayasebastian84@gmail.com">nayasebastian84@gmail.com</a>
                                                <!-- mailto:support@company.com -->
                                        </p>
                                </div>

                        </div>

                        <div class="footer-right">

                                <p class="footer-company-about">
                                        <span>Acerca de la Empresa</span>
                                        Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                                </p>

                                <div class="footer-icons">

                                        <a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a>
                                        <a href="https://twitter.com/?lang=es" target="_blank"><i class="fa fa-twitter"></i></a>
                                        <a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram"></i></a>
                                        <a href="#"><i class="fa fa-github"></i></a>

                                </div>

                        </div>

                </footer>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        </body>
</html>