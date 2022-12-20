package or.labos.rest;

import or.labos.domain.Dvorana;
import or.labos.service.DvoranaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/dvorane")
public class DvoranaController {
    @Autowired
    private DvoranaService dvoranaService;

    @GetMapping("")
    public List<Dvorana> listDvorane(@RequestParam(required = false, name = "imaklimu") Boolean imaKlimu) {
        if (imaKlimu != null) {
            return dvoranaService.listDvoraneWithKlima(imaKlimu);
        } else {
            return dvoranaService.listAll();
        }
    }

    @GetMapping("/{ozndvorana}")
    public Dvorana findDvorana(@PathVariable("ozndvorana") String ozndvorana) {
        return dvoranaService.fetch(ozndvorana);
    }
}
