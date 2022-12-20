package or.labos.rest;

import or.labos.domain.Zgrada;
import or.labos.service.DvoranaService;
import or.labos.service.ZgradaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/zgrade")
public class ZgradaController {
    @Autowired
    private ZgradaService zgradaService;

    @Autowired
    private DvoranaService dvoranaService;

    @GetMapping("")
    public ResponseEntity<List<Zgrada>> listZgrade() {
        List<Zgrada> zgrade = zgradaService.listAll();
        return ResponseEntity.ok(zgrade);
    }

    @GetMapping("/{oznzgrada}")
    public ResponseEntity<Zgrada> displayZgrada(@PathVariable("oznzgrada") String oznzgrada) {
        Zgrada zgrada = zgradaService.fetch(oznzgrada);
        if (zgrada != null)
            return ResponseEntity.ok(zgrada);  // return 200, with json body
        else
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // return 404, with null body
    }

    @PostMapping("")
    public ResponseEntity<Zgrada> createZgrada(@RequestBody Zgrada zgrada) {
        Zgrada zgradaCreated = zgradaService.createZgrada(zgrada);
        if (zgradaCreated != null)
            return ResponseEntity.ok(zgradaCreated);
        else
            return ResponseEntity.status(HttpStatus.CONFLICT).build();

    }

    @PutMapping("/{oznzgrada}")
    public ResponseEntity<Zgrada> updateZgrada(@PathVariable("oznzgrada") String oznzgrada, @RequestBody Zgrada zgrada) {
        Zgrada zgradaDeleted = zgradaService.deleteZgrada(oznzgrada);
        if (zgradaDeleted != null) {
            zgradaService.createZgrada(zgrada);
            return ResponseEntity.ok(zgrada);
        } else
            return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{oznzgrada}")
    public ResponseEntity<Zgrada> deleteZgrada(@PathVariable("oznzgrada") String oznzgrada) {
        Zgrada zgradaDeleted = zgradaService.deleteZgrada(oznzgrada);
        if (zgradaDeleted != null)
            return ResponseEntity.ok(null);
        else
            return ResponseEntity.notFound().build();
    }
}
