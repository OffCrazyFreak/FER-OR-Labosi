package or.labos.service;

import or.labos.domain.Zgrada;

import java.util.List;

public interface ZgradaService {
    List<Zgrada> listAll();

    Zgrada fetch(String oznzgrada);

    Zgrada createZgrada(Zgrada zgrada);

    Zgrada deleteZgrada(String oznzgrada);
}
