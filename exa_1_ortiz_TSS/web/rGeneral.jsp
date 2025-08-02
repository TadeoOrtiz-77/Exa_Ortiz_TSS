<%-- 
    Document   : rGeneral
    Created on : 27/06/2025, 08:58:04 PM
    Author     : Tadeo
--%>

<jsp:include page="includes/header.jsp"/>
<div class="container">
    <div class="container">
        <div class="order-details">
            <div class="row">
                <center>
                    <form method="post" action="rEmpleado.jsp">
                        <center>
                            <h3>ALTA EMPLEADO ORTIZ SILVA</h3>
                            <img src="./img/icon/inisesionalum2.jpg"/>
                            <div col-sm-6>
                                <label>Id Emmpleado</label>
                                <input class="input" type="text" placeholder="Empleado" required name="id_empleado"/>
                                <label>Nombre</label>
                                <input class="input" type="text" placeholder="Nombre" required name="nombre"/>
                                <label>Puesto</label>
                                <input class="input" type="text" placeholder="Puesto" required name="puesto"/>
                                <label>Dias Trabajados</label>
                                <input class="input" type="text" placeholder="Dias Trabajados" required name="dias_trabajados"/>
                                <label>Sueldo Diario</label>
                                <input class="input" type="text" placeholder="Sueldo Diario" required name="sueldo_diario"/>
                                <br><br>
                                <input type="submit" class="primary-btn order-submit" value="Registrarme"/>
                            </div>
                        </center>
                    </form>
                </center>
            </div>
        </div>
    </div>
</div>
<jsp:include page="includes/footer.jsp"/>
