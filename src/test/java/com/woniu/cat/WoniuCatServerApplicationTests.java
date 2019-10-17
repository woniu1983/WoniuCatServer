package com.woniu.cat;

import com.alibaba.druid.pool.DruidDataSource;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
class WoniuCatServerApplicationTests {

	@Resource
	DataSource dataSource;

	@Test
	void contextLoads() {
		dbConnectTest();
	}

	void dbConnectTest() {
		Connection connection = null;
		try {
			System.out.println("数据源>>>>>>" + dataSource.getClass());
			connection = dataSource.getConnection();

			System.out.println("连接>>>>>>>>>" + connection);
			System.out.println("连接地址>>>>>" + connection.getMetaData().getURL());

			DruidDataSource druidDataSource = (DruidDataSource) dataSource;
			System.out.println("druidDataSource 数据源最大连接数：" + druidDataSource.getMaxActive());
			System.out.println("druidDataSource 数据源初始化连接数：" + druidDataSource.getInitialSize());
			System.out.println("druidDataSource 数据源有效性查询：" + druidDataSource.getValidationQuery());

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
