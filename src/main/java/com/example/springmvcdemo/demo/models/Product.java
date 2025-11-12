package com.example.springmvcdemo.demo.models;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "products")
public class Product {
    @Id
    private String productID;
    private String categoryID;
    private String productName;
    private int price;
    private String description;
}
