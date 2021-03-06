package com.huntdreams.service.impl;

import com.huntdreams.domain.Product;
import com.huntdreams.domain.repository.ProductRepository;
import com.huntdreams.service.OrderService;
import com.huntdreams.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by noprom on 1/22/16.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    public void addProduct(Product product) {
        productRepository.addProduct(product);
    }

    public List<Product> getAllProducts() {
        return productRepository.getAllProducts();
    }

    public List<Product> getProductsByCategory(String category) {
        return productRepository.getProductsByCategory(category);
    }

    public List<Product> getProductsByManufacturer(String manufacturer) {
        return productRepository.getProductsByManufacturer(manufacturer);
    }

    public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
        return productRepository.getProductsByFilter(filterParams);
    }

    public Set<Product> filterProducts(String category, String manufacture, Map<String, List<String>> filterParams) {
        return null;
    }

    public Product getProductById(String productID) {
        return productRepository.getProductById(productID);
    }
}
