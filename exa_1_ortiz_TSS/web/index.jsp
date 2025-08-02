<%-- 
    Document   : index
    Created on : 24/06/2025, 07:53:43 PM
    Author     : Tadeo
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp"%>
<%@page import="java.sql.*"%>

<br>
<div class="container">
    <center>
        <h4>ORTIZ SILVA S.A. DE C.V.</h4>
        <br>
    </center>  

    <div class="row col-md-12" >
        <table class="table table-striped table-bordered table-hover" style="text-align: center">
            <thead>
                <tr>
                    <th style="text-align: center">id_empleado</th>
                    <th style="text-align: center">Nombre</th>
                    <th style="text-align: center">Puesto</th>
                    <th style="text-align: center">Dias Trabajados</th>
                    <th style="text-align: center">Saldo Diario</th>
                    <th style="text-align: center">Sueldo Total</th>

                    <th style="text-align: center">Operaciones</th>
                    <th style="text-align: center">Operaciones</th>
                </tr>
            </thead>
            <tbody>

                <%  
                    st = conexion.prepareStatement("select * from empleado");
                    rs = st.executeQuery();
                    while (rs.next()) {//inicia while
                %>  
                <tr>
                    <td><%=rs.getString("id_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("puesto")%></td>
                    <td><%=rs.getString("dias_trabajados")%></td><!-- comment -->
                    <td><%=rs.getString("sueldo_diario")%></td>
                    <td><%=rs.getString("sueldo_total")%></td>

                    <td><a class="btn btn-danger" href="eliminar.jsp?id_empleado=<%=rs.getString("id_empleado")%>">Eliminar</a></td>
                    <td><a class="btn btn-success" href="editarUsuario.jsp?id_empleado=<%= rs.getString(1)%>&id_empleado=<%= rs.getString(2)%>&password=<%= rs.getString(3)%>">Editar</a></td>
                </tr>
                <%
                            }//termina while  
%>
            </tbody>
        </table>
    </div>
</div>            

<center>  <h4>Fecha y hora del sistema : <%= new java.util.Date()%></h4></center>


<jsp:include page="includes/footer.jsp"/>