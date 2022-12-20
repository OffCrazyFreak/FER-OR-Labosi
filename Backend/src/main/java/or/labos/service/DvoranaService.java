package or.labos.service;

import or.labos.domain.Dvorana;
import or.labos.domain.Zgrada;

import java.util.List;

public interface DvoranaService {
    List<Dvorana> listAll();

    Dvorana fetch(String ozndvorana);

    List<Dvorana> listDvoraneWithKlima(boolean imaKlimu);
}
