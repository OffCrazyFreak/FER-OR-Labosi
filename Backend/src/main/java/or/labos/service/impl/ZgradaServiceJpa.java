package or.labos.service.impl;

import or.labos.dao.ZgradaRepository;
import or.labos.domain.Zgrada;
import or.labos.service.DvoranaService;
import or.labos.service.RequestDeniedException;
import or.labos.service.ZgradaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.List;

@Service
public class ZgradaServiceJpa implements ZgradaService {
    @Autowired
    private ZgradaRepository zgradaRepo;

    @Autowired
    private DvoranaService dvoranaService;

    @Override
    public List<Zgrada> listAll() {
        return zgradaRepo.findAll();
    }

    @Override
    public Zgrada fetch(String oznzgrada) {
        return zgradaRepo.findByOznzgrada(oznzgrada);
    }

    @Override
    public Zgrada createZgrada(Zgrada zgrada) {
        Assert.notNull(zgrada, "Zgrada object must be given.");
        if (zgradaRepo.countByOznzgrada(zgrada.getOznzgrada()) > 0) {
            throw new RequestDeniedException(
                    "Zgrada with oznzgrada " + zgrada.getOznzgrada() + " already exists."
            );
        }

        return zgradaRepo.save(zgrada);
    }

    @Override
    public Zgrada deleteZgrada(String oznzgrada) {
        Zgrada zgrada = zgradaRepo.findByOznzgrada(oznzgrada);
        zgradaRepo.delete(zgrada);
        return zgrada;
    }
}
