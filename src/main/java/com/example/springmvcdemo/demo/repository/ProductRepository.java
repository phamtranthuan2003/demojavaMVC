package com.example.springmvcdemo.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.springmvcdemo.demo.models.Product;

public interface ProductRepository extends CrudRepository<Product, String>{
    Iterable<Product> findByCategoryID(String categoryID);
}
