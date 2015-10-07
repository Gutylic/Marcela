<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel_De_Control.aspx.cs" Inherits="Marcela.Logueo.Panel_De_Control" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paciente - Marcela Escobedo</title>
<meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            <nav class="navbar navbar-fixed-top header fondo_encabezado">
 	        <div class="col-xs-12" style="padding-left:140px">
                 <div class="Container">
                     <div class="row">
                        <div class="col-xs-4 administrador">
                             <asp:Label ID="Etiqueta_Administrador" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-4 consola_de_control">
                            <div class="col-xs-6" >

                                <h1 class="titulo">Consulta:</h1>

                            </div>
                            <div class="col-xs-6" style="margin-top: 25px; margin-left:-40px">
                                <asp:Label ID="Etiqueta_Consulta" runat="server" Text="" CssClass="titulo" style="font-size: 18px;color: white" ></asp:Label>
                            </div>
                        </div> 
                        <div class="col-xs-4 cerrar_session">                             
                             <asp:LinkButton ID="Cerrar_Session" ToolTip="Cerrar Session" runat="server" OnClick="Cerrar_Session_Click">X</asp:LinkButton>
                        </div>
                     </div>
                 </div>   
            </div>	     
        </nav>
            </div>
        <div class="navbar navbar-default" id="subnav">
            <div class="col-md-12"></div>	
        </div>

<!--main-->
        <div class="container" id="main">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>Compre sus Audios</h4></div>
   			            <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">Relajación</a>
                                <a href="#" class="list-group-item">Sanación</a>
                                <a href="#" class="list-group-item">Proximamente más audios</a>
                            </div>
                        </div>
   		            </div>
                
                    <div class="well"> 
                        <form class="form-horizontal" role="form">
                            <h4>Realice una consulta</h4>
                            <div class="form-group" style="padding:14px;">
                                <textarea class="form-control" placeholder="Ingrese su mensaje"></textarea>
                            </div>             
                        </form>
                    </div>
     
        

	</div>
  	<div class="col-md-4 col-sm-6">
      	 
          <div class="well"> 
             <form class="form">
              <h4>Consulta Terapeutica</h4>
              
                  <asp:Button ID="Pago_Consulta" runat="server" Text="Realice su Pago" CssClass="btn btn-primary" Width="100%" />
              
            </form>
          </div>





      	 <div class="panel panel-default">
           <div class="panel-heading"><h4>La Envidia de la Vagina</h4></div>
   			<div class="panel-body">
              <p><img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Compre el libro en línea</a></p>
              <div class="clearfix"></div>
              <hr>
              Este libro es una visión del comportamiento del hombre actual y su nuevo rol, con el avance en todas las áreas de la vida de la mujer moderna. Este libro trata de ejemplificar como es esta adaptación y cuales son los comportamientos.
            </div>
         </div>
      

          <div class="well"> 
             <form class="form">
              <h4>Realice su terapia en línea </h4>
              
                  <asp:Button ID="Button1" runat="server" Text="Realice su Pago" CssClass="btn btn-primary" Width="100%" />
              
            </form>
          </div>


  	</div>
  	<div class="col-md-4 col-sm-6">
         <div class="panel panel-default">
           <div class="panel-heading"> <h4>Cursos en linea</h4></div>
   			<div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">Hipnosis Clínica y Psicoterapia de las Regresiones</a>
                                <a href="#" class="list-group-item">Técnicas de Autohipnosis (proximaménte)</a>
                                <a href="#" class="list-group-item">Desarrollo y Autosuperación (proximaménte)</a>
                            </div>
            </div>
   		</div>
        
        <div class="panel panel-default">
           <div class="panel-heading"><h4>Muchas Vidas Muchos Maestros</h4></div>
   			<div class="panel-body">
              <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Compre el libro en línea</a>
              <div class="clearfix"></div>
              <hr>
              
              Este libro trata de .......................
              
              
              
            </div>
         </div>
 
     
      
    </div>
  </div><!--/row-->
  
  <hr>
  
  <div class="row">
  	<div class="col-md-12"><h2>Cursos</h2></div>
    <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"> <h4>Curso en Bahia Blanca</h4></div>
   			<div class="panel-body">
              <img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=70" class="img-circle pull-right"> <a href="#">Pague el curso en línea</a>
              <div class="clearfix"></div>
              <hr>
                   <h5>Hipnosis Clinica y Psicoterapia de las Vidas Pasadas</h5>
              <p>A dictarse durante el mes de octubre del 2015 los días del 15 al 18.
              </p>
              <h5><a href="http://google.com/+bootply">Mas información</a></h5>
              
            </div>
         </div> 
    </div>
     <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"> <h4>Curso en Buenos Aires</h4></div>
   			<div class="panel-body">
              Curso a dictarse los días de noviembre del 2015
              <hr>
              <div class="well well-sm">
                <div class="media">
                    <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="//placehold.it/80">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Buenos Aires</h4>
                		
                        <p>
                           <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Pague en línea</a>
                           
                        </p>
                    </div>
                </div>
               </div>
            </div>
         </div> 
    </div>
     <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Entrevistas</h4></div>
   			<div class="panel-body">
              <img src="//placehold.it/150" class="img-circle pull-right"> <a href="#">Articulo</a>
              <div class="clearfix"></div>
              <hr>
              <div class="clearfix"></div>
              <img src="http://placehold.it/120x90/3333CC/FFF" class="img-responsive img-thumbnail pull-right">
              <p>The more powerful (and 100% fluid) Bootstrap 3 grid now comes in 4 sizes (or "breakpoints"). Tiny (for smartphones), Small (for tablets), Medium (for laptops) and Large (for laptops/desktops).</p>
              <div class="clearfix"></div>
              <hr>
              <div class="clearfix"></div>
              <img src="http://placehold.it/120x90/33CC33/FFF" class="img-responsive img-thumbnail pull-left" style="margin-right:5px;">
              <p>Mobile first" is a responsive Web design practice that prioritizes consideration of smart phones and mobile devices when creating Web pages.</p>
              
              
            </div>
         </div> 
    </div><!--/articles-->
    </div>
    
   
	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </div>
    </form>
</body>
</html>

