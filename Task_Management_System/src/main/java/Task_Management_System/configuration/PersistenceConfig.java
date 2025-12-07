package Task_Management_System.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import jakarta.persistence.EntityManagerFactory;

@Configuration
@EnableTransactionManagement
public class PersistenceConfig {
	@Bean
	public LocalEntityManagerFactoryBean entityManagerFactory() {
		LocalEntityManagerFactoryBean emfb=new LocalEntityManagerFactoryBean();
		emfb.setPersistenceUnitName("jpa-hibernate-mysql");
		return emfb;		
	}
	//this is method is responsible to retrun object of EntityTransaction
	@Bean
	public PlatformTransactionManager transactionManager(EntityManagerFactory emf) {
		JpaTransactionManager tm=new JpaTransactionManager();
		tm.setEntityManagerFactory(emf);
		return tm;		
	}
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptiontranslation() {
		return new PersistenceExceptionTranslationPostProcessor();				
	}

}
