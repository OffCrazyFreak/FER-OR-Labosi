package or.labos.dao;

import or.labos.domain.Zgrada;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ZgradaRepository extends JpaRepository<Zgrada, String> {
    int countByOznzgrada(String oznzgrada);

    Zgrada findByOznzgrada(String oznzgrada);
}
