package or.labos.rest;

import or.labos.domain.Zgrada;
import or.labos.service.DvoranaService;
import or.labos.service.ZgradaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/zgrade")
public class ZgradaController {
    @Autowired
    private ZgradaService zgradaService;

    @Autowired
    private DvoranaService dvoranaService;

    @GetMapping("")
    public List<Zgrada> listZgrade() {
        return zgradaService.listAll();
    }

    @GetMapping("/{oznzgrada}")
    public Zgrada displayZgrada(@PathVariable("oznzgrada") String oznzgrada) {
        return zgradaService.fetch(oznzgrada);
    }

    @PostMapping("")
    public Zgrada createZgrada(@RequestBody Zgrada zgrada) {
        return zgradaService.createZgrada(zgrada);
    }

    @PutMapping("/{oznzgrada}")
    public Zgrada updateZgrada(@PathVariable("oznzgrada") String oznzgrada, @RequestBody Zgrada zgrada) {
        zgradaService.deleteZgrada(oznzgrada);
        return zgradaService.createZgrada(zgrada);
    }

    @DeleteMapping("/{oznzgrada}")
    public Zgrada deleteZgrada(@PathVariable("oznzgrada") String oznzgrada) {
        zgradaService.deleteZgrada(oznzgrada);
        return null;
    }
}
