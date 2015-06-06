<%-- Pagina define o template da aplicacao, no Tiles. --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="realizarSimuladoAction" value="/realizarSimulado" />

    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <h4 align="center" style="color:grey"><spring:message code="label.menu.certificacoes"/></h4>
            </li>
            <li>
                <a href="${realizarSimuladoAction}"><spring:message code="label.menu.itil"/></a>
            </li>
            <li>
                <a href="${realizarSimuladoAction}"><spring:message code="label.menu.ccna"/></a>
            </li>
            <li>
                <a href="${realizarSimuladoAction}"><spring:message code="label.menu.pmp"/></a>
            </li>
            <li>
                <a href="${realizarSimuladoAction}"><spring:message code="label.menu.ocjp"/></a>
            </li>
        </ul>
        <!-- /.nav-second-level -->
    </div>
    <!-- /.sidebar-collapse -->
