<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>


<c:import url="/common/header.jsp" />

<body>
	<div class="container-fluid">
		<c:import url="/common/titulo.jsp" />
		<!--  Side bar é col-3 -->

		<div class="row">

			<c:import url="/common/side-bar.jsp" />
			<div class="col-9">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h3>Carrinho de Compras</h3>
						</div>
					</div>
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th class="text-center">Nome</th>
								<th class="text-center">Preço</th>
								<th class="text-center">Imagem</th>
								<th></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${ cart }" var="roupa" varStatus="index">
								
								<tr class="text-center align-middle">
									<td class="text-center align-middle">${ roupa.nome }</td>
									<td class="text-center align-middle"><fmt:formatNumber
											value="${ roupa.preco }" type="currency" currencySymbol="R$" />
									</td>
									<td class="text-center"><img
										style="width: 10vw; height: auto;"
										src="assets/img/catalogo/${ roupa.nomeImagem }"></td>
									<td class="text-center align-middle">
										<form method="post">
											<button class="btn btn-danger" name="remover" value="${ index.count }">Remover</button>
										</form>
									</td>
								</tr>
								
							</c:forEach>
						</tbody>
						<tfoot class="bg-dark text-white">
							<tr class="text-center">
								<th class="text-center">Total</th>
								<th class="text-center"><fmt:formatNumber
										value="${ total }" type="currency" currencySymbol="R$" /></th>
								<th></th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>

		</div>
	</div>




	<c:import url="/common/footer.jsp" />
</body>
</html>
