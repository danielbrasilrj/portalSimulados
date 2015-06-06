<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="default">
    <tiles:putAttribute name="body">

        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i> Simulado
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <c:forEach var="questao" items="${listaQuestao}">
                    ${questao.descricaoQuestao}
                    <br/> <br/>
                    <c:forEach var="resposta" items="${questao.listaRespostas}">
                        <input type="radio" name="resposta" value="${resposta.correta}">${resposta.descricao}
                        <br/>
                    </c:forEach>
                    <hr/>
                </c:forEach>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </tiles:putAttribute>
</tiles:insertDefinition>