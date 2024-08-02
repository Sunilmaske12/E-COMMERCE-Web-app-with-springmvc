package com.sunil.oes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sunil.oes.entity.Product;

@Service
public class ProductService {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public List<Product> getAllProdcut(){
		return this.hibernateTemplate.loadAll(Product.class);	
	}
	
	public Product getProductById(int pid) {
		return this.hibernateTemplate.load(Product.class, pid);		
	}
	
	@Transactional
	public String saveOrUpdateProduct(Product product) {	
		this.hibernateTemplate.saveOrUpdate(product);
		return "Success";
	}
}
