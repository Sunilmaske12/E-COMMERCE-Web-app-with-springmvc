package com.sunil.oes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sunil.oes.entity.Product;
import com.sunil.oes.entity.ProductCategory;
import com.sunil.oes.service.CategoryService;
import com.sunil.oes.service.ProductService;

@RestController
public class ProductController {

	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/getAllProduct")
	public List<Product> getAllProduct(){		 
		return this.productService.getAllProdcut();		 
	}
	
	@GetMapping("/getLatestProductList")
	public List<Product> getLatestProductList(){
		return this.productService.getAllProdcut(); //need to change
	}
	
	@PostMapping("/saveUpdateProduct")
	public String saveUpdateProduct(HttpServletRequest request) {
		String resp = "";
		int productId = request.getParameter("productId") != null ? Integer.parseInt(request.getParameter("productId")) : 0;
		String productName = request.getParameter("productName");
		String categoryId = request.getParameter("productCategoryId");
		String productPrice = request.getParameter("productPrice");
		
		Product product = new Product(productId, productName, categoryId, Integer.parseInt(productPrice), null );
		resp = this.productService.saveOrUpdateProduct(product);
		
		return resp;
	}
	
	
}
