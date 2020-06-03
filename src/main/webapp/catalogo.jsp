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
					<c:forEach items="${ roupas }" var="roupa">
						<div class="card m-2">
							<div class="card-header">
								<h5>${ roupa.nome }</h4>
							</div>

							<div class="card-body">
								<div class="card-title">

									<fmt:formatNumber value="${ roupa.preco }" type="currency"
										currencySymbol="R$" />
								</div>
							</div>
							<div class="card-footer">
								<botton class="btn btn-primary">Adicionar</botton>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>




	<c:import url="/common/footer.jsp" />
</body>
</html>
