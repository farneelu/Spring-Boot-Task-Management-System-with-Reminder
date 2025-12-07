package Task_Management_System.configuration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "Task_Management_System")
public class MyConfigApp {
    
    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver rs = new InternalResourceViewResolver();
        rs.setPrefix("/WEB-INF/views/");
        rs.setSuffix(".jsp");
        return rs;  
    }

}
