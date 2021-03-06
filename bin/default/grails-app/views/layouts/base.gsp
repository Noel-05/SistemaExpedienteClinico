<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    
    <title>
        <%-- PARA EL TITULO DE LAS DEMAS PAGINAS --%>
        <g:layoutTitle default="Inicio"/>
    </title>
    
    <asset:link rel="icon" href="logoMORAG.png" type="image/x-ico"/>
    <asset:stylesheet rel="stylesheet" href="main2.css"/>

    <!--====== Scripts -->
    <asset:javascript src="jquery-3.1.1.min.js"/>
    <asset:javascript src="sweetalert2.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="material.min.js"/>
    <asset:javascript src="ripples.min.js"/>
    <asset:javascript src="jquery.mCustomScrollbar.concat.min.js"/>
    <asset:javascript src="main.js"/>
	
    <script>
        $.material.init();
    </script>

    <g:layoutHead/>

</head>

<body>
    <!-- SideBar -->
	<section class="full-box cover dashboard-sideBar">
            <div class="full-box dashboard-sideBar-bg btn-menu-dashboard"></div>
            <div class="full-box dashboard-sideBar-ct">
			
            <!--SideBar Title -->
            <div class="full-box text-uppercase text-center text-titles dashboard-sideBar-title">
                SECLIN <i class="zmdi zmdi-close btn-menu-dashboard visible-xs"></i>
            </div>
			
            <!-- SideBar User info -->
            <div class="full-box dashboard-sideBar-UserInfo">
                
                <figure class="full-box">
                    <asset:image src="usuario.png" alt="UserIcon"/>
                    
                    </br>
                    <g:if test="${session.usuario}">
                        <figcaption class="text-center text-titles">${session.usuario}</figcaption>
                        <figcaption class="text-center text-titles">${session.usuario.idRol.nombreRol}</figcaption>
                        <figcaption class="text-center text-titles">${hoy = new Date()}</figcaption>
                    </g:if>
                    <g:else>
                        <figcaption class="text-center text-titles">Sin Iniciar.</figcaption>
                        <figcaption class="text-center text-titles">${hoy = new Date()}</figcaption>
                    </g:else>
                    
                </figure>
                
                <ul class="full-box list-unstyled text-center">
                    <li>
                        <g:link controller="usuario" action="logout">
                            <i class="zmdi zmdi-power"></i>
                        </g:link>
                    </li>
                </ul>
                
            </div>
            
                <g:if test="${session.usuario}">
                    <!-- SideBar Menu -->
                    <ul class="list-unstyled full-box dashboard-sideBar-Menu">

                        <li>
                            <g:link controller="home" action="index">
                                <i class="zmdi zmdi-view-dashboard zmdi-hc-fw"></i> Inicio
                            </g:link>
                        </li>
                        
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador'))}">
                                <li>
                                    <g:link controller="usuario" action="index">
                                        <i class="zmdi zmdi-account zmdi-hc-fw"></i> Usuarios
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>

                        <g:if test="${session.usuario}">
                            <g:if test="${session.usuario.idRol.nombreRol.equals('Administrador')}">
                                <li>
                                    <g:link controller="rolUsuario" action="index">
                                        <i class="zmdi zmdi-check-all zmdi-hc-fw"></i> Roles de Usuario
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>

                        <li>
                            <g:link controller="cita" action="index">
                                <i class="zmdi zmdi-book zmdi-hc-fw"></i> Citas M&eacute;dicas
                            </g:link>
                        </li>

                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico')) || (session.usuario.idRol.nombreRol.equals('Secretaria'))}">
                                <li>
                                    <g:link controller="persona" action="index">
                                        <i class="zmdi zmdi-accounts-alt zmdi-hc-fw"></i> Paciente </i>
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>

                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <g:link controller="expediente" action="index">
                                        <i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Expedientes Cl&iacute;nico</i>
                                    </g:link>

                                </li>
                            </g:if>
                        </g:if>
                            
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <g:link controller="historialClinico" action="index">
                                        <i class="zmdi zmdi-card zmdi-hc-fw"></i> Historial Cl&iacute;nico</i>
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>
                            
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico')) || (session.usuario.idRol.nombreRol.equals('Secretaria'))}">
                                <li>
                                    <a href="#!" class="btn-sideBar-SubMenu">
                                        <i class="zmdi zmdi-balance zmdi-hc-fw"></i> Instalaciones <i class="zmdi zmdi-caret-down pull-right"></i>
                                    </a>
                                    <ul class="list-unstyled full-box">
                                        <li>
                                            <a href="/clinica/index"><i class="zmdi zmdi-home zmdi-hc-fw"></i> Cl&iacute;nica</a>
                                        </li>
                                        <li>
                                            <a href="/hospital/index"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Hospital </a>
                                        </li>
                                    </ul>
                                </li>
                            </g:if>
                        </g:if>
                            
                        <!-- <li>
                            <a href="#!" class="btn-sideBar-SubMenu">
                                <i class="zmdi zmdi-money zmdi-hc-fw"></i> Costo Servicios <i class="zmdi zmdi-caret-down pull-right"></i>
                            </a>
                        </li> -->
                    
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <a href="/SignoVital/index" class="btn-sideBar-SubMenu">
                                        <i class="zmdi zmdi-timer zmdi-hc-fw"></i> - Signos Vitales
                                    </a>
                                </li>
                            </g:if>
                        </g:if>

                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <a href="/consulta/index" class="btn-sideBar-SubMenu">
                                        <i class="zmdi zmdi-case zmdi-hc-fw"></i> - Consulta M&eacute;dica
                                    </a>
                                </li>
                            </g:if>
                        </g:if>
                        
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <g:link controller="sintoma" action="index">
                                        <i class="zmdi zmdi-account zmdi-hc-fw"></i> Sintomatolog??a
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>
                            
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico')) || (session.usuario.idRol.nombreRol.equals('Secretaria'))}">
                                <li>
                                    <a href="#!" class="btn-sideBar-SubMenu">
                                        <i class="zmdi zmdi-book zmdi-hc-fw"></i> Examenes <i class="zmdi zmdi-caret-down pull-right"></i>
                                    </a>
                                    <ul class="list-unstyled full-box">
                                        <%-- <a href="school.html"><i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> Cl&iacute;nicos</a> --%>
                                        <g:if test="${session.usuario}">
                                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico')) || (session.usuario.idRol.nombreRol.equals('Secretaria'))}">
                                                <li>
                                                    <g:link controller="examenClinico" action="index">
                                                    <i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> Cl??nicos
                                                    </g:link>
                                                </li>
                                                <li>
                                                    <g:link controller="examenFisico" action="index">
                                                    <i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> F??sicos
                                                    </g:link>
                                                </li>
                                            </g:if>
                                        </g:if>
                                    </ul>
                                </li>
                            </g:if>
                        </g:if>
                            
                        <g:if test="${session.usuario}">
                            <g:if test="${(session.usuario.idRol.nombreRol.equals('Administrador')) || (session.usuario.idRol.nombreRol.equals('Medico'))}">
                                <li>
                                    <a href="#!" class="btn-sideBar-SubMenu">
                                        <i class="zmdi zmdi-comment-list zmdi-hc-fw"></i> - Tratamientos <i class="zmdi zmdi-caret-down pull-right"></i>
                                    </a>
                                    <ul class="list-unstyled full-box">
                                        <li>
                                            <a href="/TratamientoMedico/index"><i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> Tratamientos </a>
                                        </li>
                                    </ul>
                                </li>
                            </g:if>
                        </g:if>

                        <!-- <li>
                            <a href="#!" class="btn-sideBar-SubMenu">
                                <i class="zmdi zmdi-case-check zmdi-hc-fw"></i> Asignar Diagnosticos <i class="zmdi zmdi-caret-down pull-right"></i>
                            </a>
                        </li> -->

                        <!-- <li>
                            <a href="#!" class="btn-sideBar-SubMenu">
                                <i class="zmdi zmdi-hospital zmdi-hc-fw"></i> Hospitalizaci&oacute;n <i class="zmdi zmdi-caret-down pull-right"></i>
                            </a>
                            <ul class="list-unstyled full-box">
                                <li>
                                    <a href=""><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i> Teacher</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-male-female zmdi-hc-fw"></i> Representative</a>
                                </li>
                                <li>
                                    <a href=""><i class="zmdi zmdi-money-box zmdi-hc-fw"></i> Registration</a>
                                </li>
                            </ul>
                        </li> -->
                        
                        <g:if test="${session.usuario}">
                            <g:if test="${session.usuario.idRol.nombreRol.equals('Administrador')}">
                                <li>
                                    <g:link controller="motivo" action="index">
                                        <i class="zmdi zmdi-font zmdi-hc-fw"></i> Motivos de Cita
                                    </g:link>
                                </li>
                            </g:if>
                        </g:if>

                    </ul>
                </g:if>
            </div>
	</section>

	<!-- Content page-->
	<section class="full-box dashboard-contentPage">
            <!-- NavBar -->
            <nav class="full-box dashboard-Navbar">
                <ul class="full-box list-unstyled text-right">
                    <li class="pull-left">
                        <a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
                    </li>
                </ul>
            </nav>
		
            <!-- Content page -->
            <div class="container-fluid">
                <div class="page-header">
                  <h1 class="text-titles"><strong>Sistema de Expediente Cl&iacute;nico.</strong></h1>
                </div>
            </div>

            <%-- PARA EL BODY DE LAS DEMAS PAGINAS --%>
            <g:layoutBody/>
		
	</section>
    
    </body>
</html>