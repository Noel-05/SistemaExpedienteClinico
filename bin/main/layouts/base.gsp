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
					<figcaption class="text-center text-titles">Usuario</figcaption>
				</figure>
				<ul class="full-box list-unstyled text-center">
					<li>
						<a href="#!">
							<i class="zmdi zmdi-settings"></i>
						</a>
					</li>
					<li>
						<a href="#!" class="btn-exit-system">
							<i class="zmdi zmdi-power"></i>
						</a>
					</li>
				</ul>
			</div>

			<!-- SideBar Menu -->
			<ul class="list-unstyled full-box dashboard-sideBar-Menu">
				<li>
					<g:link controller="home" action="index">
						<i class="zmdi zmdi-view-dashboard zmdi-hc-fw"></i> Inicio
					</g:link>
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-account zmdi-hc-fw"></i> Paciente <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
					<ul class="list-unstyled full-box">
						<li>
							<a href="salon.html"><i class="zmdi zmdi-accounts-list zmdi-hc-fw"></i> Consultar</a>
						</li>
						<li>
							<a href="period.html"><i class="zmdi zmdi-font zmdi-hc-fw"></i> Registrar </a>
						</li>
						<li>
							<a href="subject.html"><i class="zmdi zmdi-edit zmdi-hc-fw"></i> Editar </a>
						</li>
						<li>
							<a href="section.html"><i class="zmdi zmdi-delete zmdi-hc-fw"></i> Eliminar</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Expedientes Cl&iacute;nico <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
					
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-card zmdi-hc-fw"></i> Historial Cl&iacute;nico <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-balance zmdi-hc-fw"></i> Instalaciones <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
					<ul class="list-unstyled full-box">
						<li>
							<a href="school.html"><i class="zmdi zmdi-home zmdi-hc-fw"></i> Cl&iacute;nica</a>
						</li>
                        <li>
							<a href="school.html"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Hospital </a>
						</li>
					</ul>
				</li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-money zmdi-hc-fw"></i> Costo Servicios <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-timer zmdi-hc-fw"></i> Signos Vitales <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-check zmdi-hc-fw"></i> Citas M&eacute;dicas <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-case zmdi-hc-fw"></i> Consulta M&eacute;dica <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-face zmdi-hc-fw"></i> Sintomatolog&iacute;a <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-book zmdi-hc-fw"></i> Examenes <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                    <ul class="list-unstyled full-box">
						<li>
							<a href="school.html"><i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> Cl&iacute;nicos</a>
						</li>
                        <li>
							<a href="school.html"><i class="zmdi zmdi-bookmark zmdi-hc-fw"></i> Fisicos </a>
						</li>
					</ul>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-comment-list zmdi-hc-fw"></i> Tratamientos <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-case-check zmdi-hc-fw"></i> Asignar Diagnosticos <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                </li>
                <li>
                    <a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-hospital zmdi-hc-fw"></i> Hospitalizaci&oacute;n <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
                    <ul class="list-unstyled full-box">
						<li>
							<a href="teacher.html"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i> Teacher</a>
						</li>
						<li>
							<a href="representative.html"><i class="zmdi zmdi-male-female zmdi-hc-fw"></i> Representative</a>
						</li>
						<li>
							<a href="registration.html"><i class="zmdi zmdi-money-box zmdi-hc-fw"></i> Registration</a>
						</li>
					</ul>
                </li>
			</ul>
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

<%-- <nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <a class="navbar-brand" href="/#"><asset:image src="grails.svg" alt="Grails Logo"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
        </ul>
    </div>

</nav>

<g:layoutBody/>

<div class="footer row" role="contentinfo">
    <div class="col">
        <a href="http://guides.grails.org" target="_blank">
            <asset:image src="advancedgrails.svg" alt="Grails Guides" class="float-left"/>
        </a>
        <strong class="centered"><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong>
        <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>

    </div>
    <div class="col">
        <a href="http://docs.grails.org" target="_blank">
            <asset:image src="documentation.svg" alt="Grails Documentation" class="float-left"/>
        </a>
        <strong class="centered"><a href="http://docs.grails.org" target="_blank">Documentation</a></strong>
        <p>Ready to dig in? You can find in-depth documentation for all the features of Grails in the <a href="http://docs.grails.org" target="_blank">User Guide</a>.</p>

    </div>

    <div class="col">
        <a href="https://grails-slack.cfapps.io" target="_blank">
            <asset:image src="slack.svg" alt="Grails Slack" class="float-left"/>
        </a>
        <strong class="centered"><a href="https://grails-slack.cfapps.io" target="_blank">Join the Community</a></strong>
        <p>Get feedback and share your experience with other Grails developers in the community <a href="https://grails-slack.cfapps.io" target="_blank">Slack channel</a>.</p>
    </div>
</div> 

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
--%>