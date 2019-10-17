package com.woniu.cat.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

@Configuration
public class DruidConfig {

    @ConfigurationProperties(prefix = "spring.datasource")
    @Bean
    public DataSource druidDataSource() {
        return new DruidDataSource();
    }

    /**
     * loginUsername：Druid 后台管理界面的登录账号
     * loginPassword：Druid 后台管理界面的登录密码
     * allow：Druid 后台允许谁可以访问
     *      initParams.put("allow", "localhost")：表示只有本机可以访问
     *      initParams.put("allow", "")：为空或者为null时，表示允许所有访问
     * deny：Druid 后台拒绝谁访问
     *      initParams.put("deny", "192.168.1.20");表示禁止此ip访问
     */
    @Bean
    public ServletRegistrationBean statViewServlet() {
        ServletRegistrationBean bean = new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
        Map<String, String> initParams = new HashMap<>();
        initParams.put("loginUsername","admin");
        initParams.put("loginPassword","admin");
        initParams.put("allow","");

        bean.setInitParameters(initParams);
        return bean;
    }

}
