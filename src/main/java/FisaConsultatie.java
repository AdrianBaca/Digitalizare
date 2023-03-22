import jakarta.validation.constraints.NotNull;

import java.util.Date;
import java.util.List;

public class FisaConsultatie {
    @NotNull(message = "Trebuie completat!")
    private Persoana pacient;
    @NotNull(message = "Trebuie completat!")
    private Date dataConsultatie;
    @NotNull(message = "Trebuie completat!")
    private Medic medic;
    @NotNull(message = "Trebuie completat!")
    private String diagnostic;
    @NotNull(message = "Trebuie completat!")
    private String medicamentatieRecomandata;
    @NotNull(message = "Trebuie completat!")
    private List<String> tipuriAnalizeRecomandate;

    public FisaConsultatie(Persoana p, Date dataConsultatie, Medic numeMedic, String diagnostic, String medicamentatieRecomandata, List<String> tipuriAnalizeRecomandate) {
        this.pacient = p;
        this.dataConsultatie = dataConsultatie;
        this.medic = numeMedic;
        this.diagnostic = diagnostic;
        this.medicamentatieRecomandata = medicamentatieRecomandata;
        this.tipuriAnalizeRecomandate = tipuriAnalizeRecomandate;
    }

    public Persoana getPacient() {
        return pacient;
    }

    public Date getDataConsultatie() {
        return dataConsultatie;
    }

    public Medic getNumeMedic() {
        return medic;
    }

    public String getDiagnostic() {
        return diagnostic;
    }

    public String getMedicamentatieRecomandata() {
        return medicamentatieRecomandata;
    }

    public List<String> getTipuriAnalizeRecomandate() {
        return tipuriAnalizeRecomandate;
    }

    public void setDiagnostic(String diagnostic) {
        this.diagnostic = diagnostic;
    }

    public void setMedicamentatieRecomandata(String medicamentatieRecomandata) {
        this.medicamentatieRecomandata = medicamentatieRecomandata;
    }

    public void setTipuriAnalizeRecomandate(List<String> tipuriAnalizeRecomandate) {
        this.tipuriAnalizeRecomandate = tipuriAnalizeRecomandate;
    }

}
