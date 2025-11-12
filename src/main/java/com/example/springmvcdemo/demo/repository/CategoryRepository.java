package com.example.springmvcdemo.demo.repository;
import org.springframework.data.repository.CrudRepository;
import com.example.springmvcdemo.demo.models.Category;
public interface CategoryRepository extends CrudRepository<Category, String>{
    
}
