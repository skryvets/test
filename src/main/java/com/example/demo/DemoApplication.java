package com.example.demo;

import java.math.BigDecimal;
import java.util.List;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.relational.core.mapping.Table;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}

@RestController
class AppController {

    private AppService appService;

    @GetMapping("/customers")
    List<Customer> getCustomers() {
        return appService.customers();
    }
}

@Table("CUSTOMERS")
record Customer(Long id, String firstName, String lastName, String email) {}

@Table("ACCOUNTS")
record Account(Long id, Long customerId, String accountType, BigDecimal balance) {}

@Service
class AppService {

    private CustomersRepository customersRepository;

    public List<Customer> customers() {
        return customersRepository.findAll();
    }

}

@Repository
interface AccountsRepository extends CrudRepository<Account, Long> {
    List<Account> findAll();
}

@Repository
interface CustomersRepository extends CrudRepository<Customer, Long> {
    List<Customer> findAll();
}