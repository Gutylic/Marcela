<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="Marcela.Panel" EnableEventValidation="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Panel de Control</title>
    <script src="//code.jquery.com/jquery-1.11.o.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script>
        function validar_numero(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            //Tecla de retroceso para borrar, siempre la permite
            if (tecla == 8) {
                return true;
            }
            // Patron de entrada, en este caso solo acepta numeros
            patron = /[0-9]/;
            tecla_final = String.fromCharCode(tecla);
            return patron.test(tecla_final);
        }
        function Confirmacion() {
            var seleccion = confirm("¿Está seguro de realizar la acción requerida?");
            if (!seleccion) {
                alert("NO acepto la aplicar la opcion requerida");
                location.reload(true);
            }
            return seleccion;
        }
    </script>
    <style>
        th {
            text-align:center;
            font-size:16px;
            font-weight:normal;
        }
        .espacio {
            margin-bottom:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container" style="margin-top: 30px;" >

        <div class="panel panel-primary">
            <div class="panel-heading">Listado de Pacientes</div>
            <div class="panel-body">
        <asp:GridView ID="GridView_Supervisor" Font-Size="14px" Width="100%" Font-Names="Arial"  GridLines="Both" CssClass="gridview" Font-Bold="false" BorderColor="#DEDFDE" BorderWidth="1px" BorderStyle="None" runat="server" OnSelectedIndexChanged="Identificador_Supervisor" DataKeyNames="ID_Paciente" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Apellido">
                    <ItemTemplate>
                            <asp:LinkButton ID="Seleccionar_Supervisor" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server"><%# Eval ("Apellido") %></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>                                         
                <asp:BoundField DataField="Nombre" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Nombre" />  
                <asp:BoundField DataField="Correo" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Correo" />                                 
                <asp:BoundField DataField="Telefono" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Teléfono" /> 
                <asp:BoundField DataField="Contrasena" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Contrasena" />  
                <asp:BoundField DataField="Consulta" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" HeaderText="Consulta" DataFormatString="{0:d}" />                                                              
            
            </Columns>
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:GridView>
                </div>
        <div class="panel-footer" style="text-align:center; font-size:11px">
            <div class="row">
                <div id="Extremo_Dios" runat ="server">
                    <asp:LinkButton ID="Anterior_Dios_Ultimo" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp;</asp:LinkButton>
                    <asp:LinkButton ID="Siguiente_Dios_Primero" runat="server" OnClick="Siguiente_Dios_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        
                </div>

                <div id="Interno_Dios" runat ="server">
                    <asp:LinkButton ID="Anterior_Dios_Medio" runat="server" OnClick="Anterior_Dios_Click"><< Anterior&nbsp;</asp:LinkButton>
                    <asp:LinkButton ID="Siguiente_Dios_Medio" runat="server" OnClick="Siguiente_Dios_Click">&nbsp;Siguiente >></asp:LinkButton>
                                        
                </div>
            </div>
        </div>   
    </div>
    
    </div>
        
    <div class="container" id="Formulario_Supervisor" runat="server" visible="false" >
       <div class="row">
           <div class="col-xs-12"> 
             <div class="panel panel-warning">
                 <div class="panel-heading" style="text-align:center"><h3 class="titulo_formulario">Formulario</h3></div>
                    <div class="panel-body">
                        
                        <div class="form-group">
                                            <label class="col-xs-1 control-label formulario">Nombre:</label>
                                            <div class="col-xs-11">
                                                <asp:TextBox ID="Nombre_Supervisor" CssClass="espacio" Width="100%"  runat="server"></asp:TextBox>      
                                            </div>
                                        </div>       
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Apellido:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Apellido_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>     
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Correo:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Correo_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>     
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Teléfono:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Telefono_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>     
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Celular:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Celular_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>     
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Pais:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Pais_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>     
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Skype:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Skype_Supervisor" Width="100%" CssClass="espacio" runat="server"></asp:TextBox>      
                            </div>
                        </div>                      
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Password:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Password_Supervisor" runat="server" CssClass="espacio" Width="100%" MaxLength="10"></asp:TextBox>
                            </div>
                        </div>                                    
                        <div class="form-group">
                            <label class="col-xs-1 control-label formulario">Consulta:</label>
                            <div class="col-xs-11">
                                <asp:TextBox ID="Consulta_Supervisor" runat="server" Width="100%"></asp:TextBox>  
                                                                                         
                                <ajaxToolkit:CalendarExtender ID="Consulta_Supervisor_CalendarExtender" runat="server" BehaviorID="Consulta_Supervisor_CalendarExtender" TargetControlID="Consulta_Supervisor">
                                </ajaxToolkit:CalendarExtender>
                                                                                         
                            </div>
                        </div>
                                        
                    </div>
                    <div class="panel-footer pie_formulario" style="height:55px">
                                   <div class="col-xs-4 boton_formulario">
                                        <asp:Button ID="Boton_Actualizar_Supervisor" OnClientClick="return Confirmacion();" CssClass="btn btn-warning btn_formulario" Width="100%" runat="server" Text="Actualizar" OnClick="Boton_Actualizar_Supervisor_Click" />
                                    </div>
                                    <div class="col-xs-4 boton_formulario">
                                        <asp:Button ID="Boton_Nuevo_Supervisor" CssClass="btn btn-default btn_formulario " OnClientClick="return Confirmacion();" Width="100%" runat="server" Text="Nuevo" OnClick="Boton_Nuevo_Supervisor_Click" />
                                    </div>
                                    <div class="col-xs-4 boton_formulario">
                                        <asp:Button ID="Boton_Borrar_Supervisor" CssClass="btn btn-danger btn_formulario" OnClientClick="return Confirmacion();" Width="100%" runat="server" Text="Borrar" OnClick="Boton_Borrar_Supervisor_Click" />
                                    </div>                                       
                                    
                            </div>
                </div>
            </div>
        </div>
        </div>        

    </form>
</body>
</html>

