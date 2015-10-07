<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Marcela.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hipnosis Clinica - Marcela Escobedo</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="favicon.ico">
    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
    <form id="form1" runat="server">
    <!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
                    <h1>Marcela Escobedo</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li><a href="#about">Quien soy?</a></li>
		<li><a href="#service">Mis Servicios</a></li>
		<li><a href="#contact">Contacteme</a></li>
        <li>
          <a href="Logueo/index.aspx" >Paciente</a>
        
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>PSICOLOGÍA E HIPNOSIS<span class="text_color"> CLÍNICA</span> </h2>
			<h4>SUPERE SUS MIEDOS - PROGRAME SU MENTE EN FORMA POSITIVA</h4>
		</div>
		<div class="page-scroll">
			<a href="#service" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->
    
    <!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray" style="
    height: 800px;">
		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Mis Servicios</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-sm-3 col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-1.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Adicciones</h5>
						<p>Las adicciones son herramientas que utiliza el ser humano con el fin de no aceptar, algunos aspectos de su vida. Las drogas, la obesidad, el alcoholismo, etc... Son algunas adicciones, lo común en todas ellas es que de a poco comienzan a dominar nuestra vida y nos hace dependeientes <br />
                            por medio de la hipnosis clínica esta afección es facilmente eliminable de nuestra vida.</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-2.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>REPROGRAMACIÓN MENTAL</h5>
						<p>El ser humano por cuestiones de entorno o situaciones vividas, se adapta a aceptar sufrimientos, dolores, temores, etc... todos estos casos son facilmente erradicables de su vida, es cuestión de trabajarlos con terápias alternativas de psicología, que no muchos psicólogos dominan.<br />
                            Con la técnica de programación mental usted puede volver a tener una vida normal.</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-3.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Liderazgo Motivacional</h5>
						<p>A niveles gerenciales, empresariales y otras situaciones similares, aprender a desempeñarse como un verdadero lider lleva a las personas al éxito, pero las técnicas para ser un líder respetado y admirado tiene técnicas. Estas técnicas deben ser impartidas por personas que ya capacitadas.<br />
                            Con mis conocimientos aplicando en conjunto psicología e hipnosis podra convertirse en un verdadero lider.
						</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-4.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Fobias Sociales</h5>
						<p>Todo ser humano tiene en gran o pequeña medida algún tipo de fobia social, miedo a viajar en avión, lugares cerrados, hablar en publico, miedo al dentista, a los insectos, etc... Estas fobias son el resultado de hechos vividos y que no fueron registrados por el conciente de la persona pero si por el inconsiente.<br />
                            Por medio de mensajes subliminales, usted aprenderá a perder esos miedos de manera rápida y efectiva.
						</p>
					</div>
                </div>
				</div>
            </div>
        </div>		
		</div>
	</section>
	<!-- /Section: services -->

	<!-- Section: about -->
    <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Quien Soy?</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>MARCELA ESCOBEDO</h5>
                        <p class="subtitle">Licenciada en Psicología (UBA)</p>
                        <div class="avatar"><img src="img/team/1.jpg" alt="" class="img-responsive img-circle foto-marcela" /></div>
                        <p> Master de Grado y Doctora en Hipnosis Clínica (WAEH)</p>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>MI VIDA</h5>
                        <p class="subtitle">Asi comenzó mi história</p>
                        <div class="avatar">Comencé trabajando en 1987 en barrios pobres de la ciudad de Buenos Aires con madres confundidas y niños abusados. Mujeres y jovenes adolecentes maltratados, negadores de una realidad en una historia que se repite entre generaciones de padres a hijos algo que hoy se conoce como "familias disfuncionales"<br />
                            Basada en mi experiencia, comprendí que la psicología solo sirve para curar algo que los médicos no pueden y es la mente (el alma o el espiritu) como cada uno quiera llamarlo.
                        </div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>MI EXPERIENCIA</h5>
                        <p class="subtitle">Comienzos en Hípnosis Clínica</p>
                        <div class="avatar">Luego de años de experiencia con adolecentes y deportistas en busca de nuevas herramientas que sirvieran para superar la mejor version de cada persona, encontre en la hipnósis clínica la solución. Jovenes que salian de sus adicciones, deportistas que comenzaron a desepeñarse de manera que superaban sus expectativas <br />
                            Fué entoces que me comprendí que: "psicología + hipnósis" era la herramienta para curar de manera eficaz y rápida a las personas.
                        </div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>PUEDO AYUDARTE</h5>
                        <p class="subtitle">Avalada por mis conocimientos</p>
                        <div class="avatar">Puedo ayudar a sanar tu mente por varios métodos y entre ellos: por medio de la terápia tradicional, o utilizando técnicas alternativas en el campo de la psicología que trabajan a nivel del inconciente para lograr resultados positivos más rápidos. Además utilizando técnicas de reprogramación personal (algo muy importante, ya que no toda las personas son iguales) 
                           se puede ayudar a profesionales, empresarios, emprendedores, amas de casa, adolecentes y niños.  
                    </div>
                        </div>
                </div>
				</div>
            </div>
        </div>		
		</div>
	</section>
	<!-- /Section: about -->
	

	
	

	

	<!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Contactame tengo una solucion para tu problema</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
    <div class="row">
        <div class="col-lg-8">
            <div class="boxed-grey">
                <form id="contact-form">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Nombre</label>
                            <input type="text" class="form-control" id="name" placeholder="Ingrese su nombre" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Ingrese su email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Cual es su interes</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Elija alguna opcion:</option>
                                <option value="service">Cursos</option>
                                <option value="suggestions">Psicoánalisis</option>
                                <option value="product">Hipnosis Clínica</option>
				                <option value="suggestions">Fobias o Miedos</option>
                                <option value="product">Otra Consulta</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Mensaje</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Mensaje"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                            ENVIE SU MENSAJE</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
		
		<div class="col-lg-4">
			<div class="widget-contact">
				<h5>Consultorio</h5>
				
				<address>
				  <strong>Marcela Escobedo</strong><br>
				  Yerbal 42, Piso 9, dpto B Caballito<br>
				  Buenos Aires, CABA 1405, Argentina<br>
                  <abbr title="Celular">C:</abbr> (054) 011-3796-1218
				  <abbr title="Teléfono">T:</abbr> (054) 011-4903-6605
				</address>

				<address>
				  <strong>Email</strong><br>
				  <a href="mailto:#">escobedomar@gmail.com</a>
				</address>	
				<address>
				  <strong>Seguime en las redes Sociales</strong><br>
                       	<ul class="company-social">
                            <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                            <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                        </ul>	
				</address>					
			
			</div>	
		</div>
    </div>	

		</div>
	</section>
	<!-- /Section: contact -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy;Copyright 2015 - WebMaster Martina Ivana Romero </p>
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    </form>
</body>
</html>
