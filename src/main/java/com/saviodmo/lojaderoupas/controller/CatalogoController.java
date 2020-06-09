package com.saviodmo.lojaderoupas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saviodmo.lojaderoupas.business.bean.CatalogoBean;
import com.saviodmo.lojaderoupas.business.enums.CategoriaEnum;

/**
 * Servlet implementation class CatalogoController
 */
@WebServlet("/catalogo")
public class CatalogoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private CatalogoBean catalogoBean;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CatalogoController() {
        super();
        catalogoBean = new CatalogoBean();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] codigosCategoria = request.getParameterValues("categoria");
		
		// Envia as roupas do catalogo
		request.setAttribute("roupas", catalogoBean.getRoupasFiltradas(codigosCategoria));
		request.setAttribute("categorias", CategoriaEnum.values());
				
		// Envia a pagina jps na requisição
		request.getRequestDispatcher("/catalogo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}


}
