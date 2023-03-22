
import jakarta.validation.constraints.NotNull;

public class Specializare {
    @NotNull(message = "Trebuie completat!")
    private String nume;
    @NotNull(message = "Trebuie completat!")
    private String descriere;
    public Specializare(String nume, String descriere) {
        this.nume = nume;
        this.descriere = descriere;
    }

    public String getNume() {
        return nume;
    }

    public String getDescriere() {
        return descriere;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public void setDescriere(String descriere) {
        this.descriere = descriere;
    }
}
