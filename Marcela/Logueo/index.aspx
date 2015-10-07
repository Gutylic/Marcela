<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Supervisor.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingreso - Marcela Escobedo</title>
    <script src="//code.jquery.com/jquery-1.11.o.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">

    <div class="container">
        <div class="col-xs-3"></div>
        <div class="col-xs-6">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="panel caracteristicas_panel">
                <div class="panel-heading caracteristicas_heading">Paciente</div>
                    <div class="panel-body">
    
                        <div class="input-group">
                            
                            <asp:TextBox ID="Administrador" class="form-control" placeholder="Usuario" runat="server"></asp:TextBox>
                            <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-user"></span></span>
                      
                        </div>
  
                        <div class="input-group">

                            <asp:TextBox ID="Password" class="form-control" TextMode="Password" placeholder="Contraseña" runat="server"></asp:TextBox>
                            <span class="input-group-addon" id="basic-addon22"><span class="glyphicon glyphicon-pencil"></span></span>
                        
                        </div>
                  
                    </div>

                    <div class="panel-footer">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Boton_Acceso" runat="server" CssClass="btn btn-info" Text="Acceda a su Panel" OnClick="Boton_Acceso_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

            </div>
        
        <div class="col-xs-3"></div>
    </div>
    </div>
    </form>
</body>
</html>
