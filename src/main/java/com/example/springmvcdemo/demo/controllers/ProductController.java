package com.example.springmvcdemo.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.springmvcdemo.demo.models.Category;
import com.example.springmvcdemo.demo.models.Product;
import com.example.springmvcdemo.demo.repository.CategoryRepository;
import com.example.springmvcdemo.demo.repository.ProductRepository;
@Controller
@RequestMapping(path = "products")
public class ProductController {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @RequestMapping(value = "getAllProductsByCategoryID/{categoryID}", method = RequestMethod.GET)
    public String getAllProductsByCategoryID(ModelMap modelMap, @PathVariable String categoryID){
        modelMap.addAttribute("products", productRepository.findByCategoryID(categoryID));
        return "productListByCategory";
    }
    @RequestMapping(value = "updateProduct/{productID}", method = RequestMethod.GET)
    public String updateProduct(ModelMap modelMap, @PathVariable String productID){
        modelMap.addAttribute("product", productRepository.findById(productID).orElse(null));
        Iterable<Category> categories = categoryRepository.findAll();
        modelMap.addAttribute("categories", categories);

        return "updateProduct";
    }
    @RequestMapping(value = "saveProduct/{productID}", method = RequestMethod.POST)
    public String updateProductPost(Product product){
        productRepository.save(product);
        return "redirect:/products/getAllProductsByCategoryID/" + product.getCategoryID();
    }
}
