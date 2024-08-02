package com.sunil.oes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


import com.sunil.oes.entity.Category;
import com.sunil.oes.service.CategoryService;

@RestController
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;

	@PostMapping("/saveCategory")
	public String saveCategory(HttpServletRequest req) {
		String resp = "";
		String category = req.getParameter("category");	
		
		
		if(StringUtils.isNoneBlank(category)) {
			Category obj=new Category();
			obj.setCategory(category);
			this.categoryService.saveCategory(obj);
			return "SUCCESS : Saved";
		}else {
			return "ERROR : Black Category";
		}
		
	}
	
	@GetMapping("/getAllCategories")	
	public List<Category> getAllProductCategories(){		
		return this.categoryService.getProductCategoryList();
	}
	
}
