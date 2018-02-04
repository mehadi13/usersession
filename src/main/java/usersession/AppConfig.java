package usersession;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import usersession.dao.UserDAO;
import usersession.dao.UserDAOImpl;

@Configuration
public class AppConfig {
	@Bean
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/example");
		driverManagerDataSource.setUsername("root");
		driverManagerDataSource.setPassword("");
		return driverManagerDataSource;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager(){
		return new DataSourceTransactionManager(dataSource());
	}
	
	@Bean
	public UserDAO userDAO(){
		UserDAOImpl userDAOImpl = new UserDAOImpl();
		userDAOImpl.setDataSource(dataSource());
		return userDAOImpl;
	}
	
	
	
}
