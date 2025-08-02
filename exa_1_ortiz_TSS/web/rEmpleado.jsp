<%-- 
    Document   : rEmpleado
    Created on : 5/07/2025, 08:38:06 PM
    Author     : Tadeo
--%>

<%@include file="conexion.jsp"%>

<%
    int id_empleado = Integer.parseInt(request.getParameter("id_empleado"));
    String nombre = request.getParameter("nombre");
    String puesto = request.getParameter("puesto");
    int dias = Integer.parseInt(request.getParameter("dias_trabajados"));
    double sueldo = Double.parseDouble(request.getParameter("sueldo_diario"));
    double total = dias * sueldo;

    st = conexion.prepareStatement("INSERT INTO empleado VALUES (?, ?, ?, ?, ?, ?)");
    st.setInt(1, id_empleado);
    st.setString(2, nombre);
    st.setString(3, puesto);
    st.setInt(4, dias);
    st.setDouble(5, sueldo);
    st.setDouble(6, total);
    st.executeUpdate();

    out.println("<meta http-equiv='refresh' content='0;url=index.jsp'>");
%>

<h2>Éxito al ingresar registro</h2>
<h2>Empleado: <%= id_empleado %></h2>
<h2>Nombre: <%= nombre %></h2>
<h2>Puesto: <%= puesto %></h2>
