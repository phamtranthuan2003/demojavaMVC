package com.example.springmvcdemo.demo.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
@Entity
@Getter
@Setter
@Table(name = "categories")
public class Category {
    @Id
    private String categoryID;
    private String categoryName;
    private String description;
}
