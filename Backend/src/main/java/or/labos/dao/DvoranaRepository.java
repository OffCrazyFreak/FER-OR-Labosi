package or.labos.dao;

import or.labos.domain.Dvorana;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DvoranaRepository extends JpaRepository<Dvorana, String> {
    Dvorana findByOzndvorana(String ozndvorana);
    List<Dvorana> findAllByImaklimu(boolean imaklimu);
}
