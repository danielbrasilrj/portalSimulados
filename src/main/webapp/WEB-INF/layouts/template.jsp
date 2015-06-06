<%-- Pagina define o template da aplicacao, no Tiles. --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html>
	<head>
        <!-- Bootstrap Core CSS -->
        <link href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<c:url value="/bower_components/metisMenu/dist/metisMenu.min.css" />" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="<c:url value="/dist/css/timeline.css" />" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="<c:url value="/dist/css/sb-admin-2.css" />" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="<c:url value="/bower_components/morrisjs/morris.css" />" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="<c:url value="/bower_components/bootstrap-social/bootstrap-social.css" />" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href=" <c:url value="/bower_components/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">
        <!-- Custom Fonts -->
        <link href="<c:url value="/bower_components/font-awesome/css/font-awesome.css" />" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <title><spring:message code="mensagem.titulo"/></title>
	</head>

    <body>
        <form>
            <div id="wrapper">
                <!-- Navigation -->
                <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <tiles:insertAttribute name="header" ignore="true" />
                    <div class="navbar-default sidebar" role="navigation">
                        <tiles:insertAttribute name="menu" ignore="true" />
                    </div>
                </nav>
                <div id="page-wrapper">
                    <tiles:insertAttribute name="subTitulo" ignore="true" />
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-8">
                             <tiles:insertAttribute name="body" ignore="true" />
                        </div>
                        <tiles:insertAttribute name="notificacao" ignore="true" />
                    </div>
                 </div>
            </div>
        </form>
    </body>
</html>
