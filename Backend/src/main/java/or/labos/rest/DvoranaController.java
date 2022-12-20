package or.labos.rest;

import or.labos.domain.Dvorana;
import or.labos.service.DvoranaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/dvorane")
public class DvoranaController {
    @Autowired
    private DvoranaService dvoranaService;

    @GetMapping("")
    public  ResponseEntity<List<Dvorana>> listDvorane(@RequestParam(required = false, name = "imaklimu") Boolean imaKlimu) {
        List<Dvorana> dvorane;
        if (imaKlimu != null) {
            dvorane = dvoranaService.listDvoraneWithKlima(imaKlimu);
        } else {
            dvorane = dvoranaService.listAll();
        }
        return ResponseEntity.ok(dvorane);
    }

    @GetMapping("/{ozndvorana}")
    public ResponseEntity<Dvorana> findDvorana(@PathVariable("ozndvorana") String ozndvorana) {
        Dvorana dvorana = dvoranaService.fetch(ozndvorana);
        if (dvorana != null)
            return ResponseEntity.ok(dvorana);  // return 200, with json body
        else
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // return 404, with null body
    }
}
