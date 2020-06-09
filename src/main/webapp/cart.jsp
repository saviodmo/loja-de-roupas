<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>


<c:import url="/common/header.jsp"/>

<body>
	<div class="container-fluid">
		<c:import url="/common/titulo.jsp"/> <!--  Side bar é col-3 -->
		
		<div class="row">

			<c:import url="/common/side-bar.jsp"/>
			<div class="col-9">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h3>Carrinho de Compras</h3>
						</div>	
					</div>	
				</div>
			</div>
		
		</div>	
	</div>
	
	
	
	
	<c:import url="/common/footer.jsp"/>
</body>
</html>
