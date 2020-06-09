<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>


<c:import url="/common/header.jsp" />

<body>
	<div class="container-fluid">
		<c:import url="/common/titulo.jsp" />

		<div class="row">
			<c:import url="/common/side-bar.jsp" />
			<div class="col-9">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h3>Catalogo</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<c:forEach items="${ roupas }" var="roupa">
								<div class="card m-2">
									<div class="card-header">
										<h5>${ roupa.nome }</h4>
									</div>
		
									<div class="card-body">
										
										<img class="card-img" src="assets/img/catalogo/${ roupa.nomeImagem }">
										
										<div class="card-title text-center mt-3">
											<div class="badge badge-dark badge-pill">
												<h5>
													<fmt:formatNumber value="${ roupa.preco }" type="currency"
														currencySymbol="R$" />
												</h5>
											</div>
										</div>
										
										
									</div>
									<div class="card-footer text-center">
										<div class="btn-group">
											<botton class="btn btn-primary">Adicionar</botton>
											<a class="btn btn-info" href="#">Detalhes</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					
						<div class="col-6 text-right">
							<h5>Filtros</h5>
							
							<form method="post">
								<div class="form-group">
									<select multiple class="form-control" name="categoria" >
										<c:forEach items="${ categorias }" var="categoria">
											<option value="${ categoria.codigo }">${ categoria.nome }</option>
										</c:forEach>
									</select>
								</div>
								<div>
									<button class="btn">Filtrar</button>
								</div>
							</form>
							
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>




	<c:import url="/common/footer.jsp" />
</body>
</html>
