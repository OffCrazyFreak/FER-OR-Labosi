package or.labos.service.impl;

import or.labos.dao.DvoranaRepository;
import or.labos.domain.Dvorana;
import or.labos.service.DvoranaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DvoranaServiceJpa implements DvoranaService {
    @Autowired
    private DvoranaRepository dvoranaRepo;

    @Override
    public List<Dvorana> listAll() {
        return dvoranaRepo.findAll();
    }

    @Override
    public Dvorana fetch(String ozndvorana) {
        return dvoranaRepo.findByOzndvorana(ozndvorana);
    }

    @Override
    public List<Dvorana> listDvoraneWithKlima(boolean imaKlimu) {
        return dvoranaRepo.findAllByImaklimu(imaKlimu);
    }
}
