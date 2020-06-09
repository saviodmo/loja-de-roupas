<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col-3">
	<nav id="sidebar">
		<ul class="list-unstyled">
			<li><a class="btn btn-dark btn-block m-1" href=" <c:url value="/"/> ">Principal</a></li>
			<li><a class="btn btn-dark btn-block m-1" href=" <c:url value="/catalogo"/> ">Catalogo</a></li>
			<li><a class="btn btn-dark btn-block m-1" href=" <c:url value="/cart"/> ">Carrinho</a></li>
		</ul>
	</nav>
</div>