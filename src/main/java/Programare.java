import jakarta.validation.constraints.NotNull;

import java.util.Date;

public class Programare {
    @NotNull(message = "Trebuie completat!")
    private Persoana pacient;
    @NotNull(message = "Trebuie completat!")
    private Medic medic;
    @NotNull(message = "Trebuie completat!")
    private Specializare specializare;
    @NotNull(message = "Trebuie completat!")
    private Date data;
    @NotNull(message = "Trebuie completat!")
    private String ora;

    public Programare(Persoana pacient, Medic medic, Specializare specializare, Date data, String ora) {
        this.pacient = pacient;
        this.medic = medic;
        this.specializare = specializare;
        this.data = data;
        this.ora = ora;
    }

    public Persoana getPacient() {
        return pacient;
    }

    public Medic getMedic() {
        return medic;
    }

    public Specializare getSpecializare() {
        return specializare;
    }

    public Date getData() {
        return data;
    }

    public String getOra() {
        return ora;
    }

    public void setPacient(Persoana pacient) {
        this.pacient = pacient;
    }

    public void setMedic(Medic medic) {
        this.medic = medic;
    }

    public void setSpecializare(Specializare specializare) {
        this.specializare = specializare;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public void setOra(String ora) {
        this.ora = ora;
    }
}