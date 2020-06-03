package com.saviodmo.lojaderoupas.business.bean;

import java.util.ArrayList;
import java.util.List;

public class CatalogoBean {

	private List<RoupaBean> roupas;
	
	public CatalogoBean() {
		
		roupas = new ArrayList<>();
		roupas.add(novaRoupa("Camisa", "Roupa Masculina", 49.7f));
		roupas.add(novaRoupa("Calça", "Roupa Masculina", 90f));
		roupas.add(novaRoupa("Camisa", "Roupa Feminina", 15f));
		roupas.add(novaRoupa("Camisa", "Masculina", 130f));
	}

	// Função para criar novas roupas
	private RoupaBean novaRoupa(String nome, String categoria, Float preco) {
		
		Integer codigo = roupas.size();
		
		RoupaBean roupaBean = new RoupaBean();
		roupaBean.setCodigo(codigo);
		roupaBean.setNome(nome);
		roupaBean.setCategoria(categoria);
		roupaBean.setPreco(preco);
		
		return roupaBean;
		
	}
	
	public List<RoupaBean> getRoupas() {
		return roupas;
	}

	public void setRoupas(List<RoupaBean> roupas) {
		this.roupas = roupas;
	}
	
	
	
}
