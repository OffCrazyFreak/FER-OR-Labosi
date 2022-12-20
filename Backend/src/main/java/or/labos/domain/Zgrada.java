package or.labos.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.Set;

@Entity
public class Zgrada {
    @Id
    private String oznzgrada;

    @OneToMany(mappedBy="oznzgrada")
    private Set<Dvorana> dvorane;

    public String getOznzgrada() {
        return oznzgrada;
    }

    public void setOznzgrada(String oznzgrada) {
        this.oznzgrada = oznzgrada;
    }

    public Set<Dvorana> getDvorane() {
        return dvorane;
    }

    public void setDvorane(Set<Dvorana> dvorane) {
        this.dvorane = dvorane;
    }

    @Override
    public String toString() {
        return "Zgrada{" +
                "oznzgrada='" + oznzgrada + '\'' +
                ", dvorane=" + dvorane +
                '}';
    }
}
