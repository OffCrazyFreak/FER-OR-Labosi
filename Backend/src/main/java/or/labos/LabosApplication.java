package or.labos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * POKRENUTI NA DESKTOPU JER WINDOWS NE PODRZAVA DUGI PATH DATOTEKE
 */
@SpringBootApplication
public class LabosApplication {
	public static void main(String[] args) {
		SpringApplication.run(LabosApplication.class, args);
	}

}
