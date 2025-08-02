<%-- 
    Document   : conexion
    Created on : 27/06/2025, 05:06:19 PM
    Author     : Tadeo
--%>

<%@page language="java" import="java.sql.*" %>
<%
       Connection conexion=null;
       PreparedStatement st=null;
       ResultSet rs=null;
       Class.forName("com.mysql.jdbc.Driver");
       conexion=DriverManager.getConnection("jdbc:mysql://localhost/empleados","root","");

%>
