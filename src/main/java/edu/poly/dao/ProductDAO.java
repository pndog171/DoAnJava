package edu.poly.dao;

import edu.poly.model.Product;
import edu.poly.model.Report;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;
@Transactional
public interface ProductDAO extends JpaRepository<Product, Integer> {
       List<Product> findAllByCategoryId(long id);
       Product findById(long id);
       Product deleteById(long id);
       Product findAllById(long id);
       Page<Product> findByNameLike(String keywords, Pageable pageable);
       Page<Product> findByCategoryId(long keywords, Pageable pageable);
       Page<Product> findByPriceBetween(double a ,double b, Pageable pageable);

}

