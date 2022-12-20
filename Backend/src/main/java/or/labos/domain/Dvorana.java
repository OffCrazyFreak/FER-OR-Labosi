package or.labos.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Dvorana {
    @Id
    private String ozndvorana;

    @Column(nullable = false)
    private String oznzgrada;

    @Column(nullable = false)
    private short kapacitet;

    private Short brojstolova;

    private Short brojstolica;

    private Boolean imaklimu;

    private Boolean imaprirodnusvjetlost;

    private Boolean imauticnice;

    private Boolean dvoranasopremom;

    private Boolean imaracunalo;

    private Boolean imahdmikabel;

    private Boolean imamikrofon;

    public String getOzndvorana() {
        return ozndvorana;
    }

    public void setOzndvorana(String ozndvorana) {
        this.ozndvorana = ozndvorana;
    }

    public String getOznzgrada() {
        return oznzgrada;
    }

    public void setOznzgrada(String oznzgrada) {
        this.oznzgrada = oznzgrada;
    }

    public short getKapacitet() {
        return kapacitet;
    }

    public void setKapacitet(short kapacitet) {
        this.kapacitet = kapacitet;
    }

    public Short getBrojstolova() {
        return brojstolova;
    }

    public void setBrojstolova(Short brojstolova) {
        this.brojstolova = brojstolova;
    }

    public Short getBrojstolica() {
        return brojstolica;
    }

    public void setBrojstolica(Short brojstolica) {
        this.brojstolica = brojstolica;
    }

    public Boolean getImaklimu() {
        return imaklimu;
    }

    public void setImaklimu(Boolean imaklimu) {
        this.imaklimu = imaklimu;
    }

    public Boolean getImaprirodnusvjetlost() {
        return imaprirodnusvjetlost;
    }

    public void setImaprirodnusvjetlost(Boolean imaprirodnusvjetlost) {
        this.imaprirodnusvjetlost = imaprirodnusvjetlost;
    }

    public Boolean getImauticnice() {
        return imauticnice;
    }

    public void setImauticnice(Boolean imauticnice) {
        this.imauticnice = imauticnice;
    }

    public Boolean getDvoranasopremom() {
        return dvoranasopremom;
    }

    public void setDvoranasopremom(Boolean dvoranasopremom) {
        this.dvoranasopremom = dvoranasopremom;
    }

    public Boolean getImaracunalo() {
        return imaracunalo;
    }

    public void setImaracunalo(Boolean imaracunalo) {
        this.imaracunalo = imaracunalo;
    }

    public Boolean getImahdmikabel() {
        return imahdmikabel;
    }

    public void setImahdmikabel(Boolean imahdmikabel) {
        this.imahdmikabel = imahdmikabel;
    }

    public Boolean getImamikrofon() {
        return imamikrofon;
    }

    public void setImamikrofon(Boolean imamikrofon) {
        this.imamikrofon = imamikrofon;
    }

    @Override
    public String toString() {
        return "Dvorana{" +
                "ozndvorana='" + ozndvorana + '\'' +
                ", kapacitet=" + kapacitet +
                ", brojstolova=" + brojstolova +
                ", brojstolica=" + brojstolica +
                ", imaklimu=" + imaklimu +
                ", imaprirodnusvjetlost=" + imaprirodnusvjetlost +
                ", imauticnice=" + imauticnice +
                ", dvoranasopremom=" + dvoranasopremom +
                ", imaracunalo=" + imaracunalo +
                ", imahdmikabel=" + imahdmikabel +
                ", imamikrofon=" + imamikrofon +
                '}';
    }
}
