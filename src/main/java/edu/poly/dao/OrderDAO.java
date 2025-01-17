package edu.poly.dao;

import edu.poly.model.Order;
import edu.poly.model.RevenuePrice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;
@Transactional
public interface OrderDAO extends JpaRepository<Order, Long> {
    List<Order> findAllByAccount_Id(long id);
    List<Order> findAllById(long id);
@Query(value = "Select sum(price)  from orders where  Year(createDate) like '2021' ",nativeQuery = true)
Float selectTotals();
    @Query(value = "Select sum(price)  from orders where  Month(createDate) =5 ",nativeQuery = true)
    Float selectTotalsMonth();

}
