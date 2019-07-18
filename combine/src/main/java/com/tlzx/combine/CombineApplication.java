package com.tlzx.combine;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.tlzx.combine.mapper")
@EnableTransactionManagement // 启注解事务管理，等同于xml配置方式的
@EnableScheduling
public class CombineApplication {

    public static void main(String[] args) {
        SpringApplication.run(CombineApplication.class, args);
    }

}
