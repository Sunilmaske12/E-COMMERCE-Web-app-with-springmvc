package com.sunil.oes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sunil.oes.entity.Category;

@Service
public class CategoryService {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public List<Category> getProductCategoryList(){		
		return this.hibernateTemplate.loadAll(Category.class);		
	}
	
	@Transactional
	public void saveCategory(Category category) {
		
		this.hibernateTemplate.save(category);
	}
}
