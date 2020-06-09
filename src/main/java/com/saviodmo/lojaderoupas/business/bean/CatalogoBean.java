package com.saviodmo.lojaderoupas.business.bean;

import java.util.ArrayList;
import java.util.List;

public class CatalogoBean {

	private List<RoupaBean> roupas;
	
	public CatalogoBean() {
		
		roupas = new ArrayList<>();
		roupas.add(novaRoupa("Camiseta", "Roupa Masculina", 49.7f, "camiseta.jpg"));
		roupas.add(novaRoupa("Calça", "Roupa Masculina", 90f, "calca.jpg"));
		roupas.add(novaRoupa("Camisa Social", "Roupa Masculina", 130f, "camisa.jpg"));
		roupas.add(novaRoupa("Regata", "Roupa Feminina", 15f, "regata.jpg"));
		roupas.add(novaRoupa("Vestido", "Roupa Feminina", 80f, "vestido.jpg"));
		roupas.add(novaRoupa("Saia", "Roupa Feminina", 35.8f, "saia.jpg"));
		
	}

	// Função para criar novas roupas
	private RoupaBean novaRoupa(String nome, String categoria, Float preco, String nomeImagem) {
		
		Integer codigo = roupas.size();
		
		RoupaBean roupaBean = new RoupaBean();
		roupaBean.setCodigo(codigo);
		roupaBean.setNome(nome);
		roupaBean.setCategoria(categoria);
		roupaBean.setPreco(preco);
		roupaBean.setNomeImagem(nomeImagem);
		
		return roupaBean;
		
	}
	
	public List<RoupaBean> getRoupas() {
		return roupas;
	}

	public void setRoupas(List<RoupaBean> roupas) {
		this.roupas = roupas;
	}
	
	public List<RoupaBean> getRoupasFiltradas(String codigoCategoria){
		
		if(codigoCategoria == null) {
			return roupas;
		}
		int codigo = Integer.parseInt(codigoCategoria);
		
		List<RoupaBean> roupasFiltradas = new ArrayList<>();
		 
		
		for(RoupaBean roupa : roupas) {
			if (codigo == 0) {
				if("Roupa Masculina".equals(roupa.getCategoria())) {
					roupasFiltradas.add(roupa);
				}
			}else if (codigo == 1) {
				if("Roupa Feminina".equals(roupa.getCategoria())) {
					roupasFiltradas.add(roupa);
				}
			} else if (codigo == 2) {
				if("Roupa Infantil".equals(roupa.getCategoria())) {
					roupasFiltradas.add(roupa);
				}
			}
		}
		
		return roupasFiltradas;
		
	}
	
	
}
