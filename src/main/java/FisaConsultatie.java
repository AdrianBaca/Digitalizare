import java.util.Date;
import java.util.List;

public class FisaConsultatie {
    private Persoana persoana;
    private Date dataConsultatie;
    private String specializareMedic;
    private String numeMedic;
    private String diagnostic;
    private String medicamentatieRecomandata;
    private List<String> tipuriAnalizeRecomandate;

    public FisaConsultatie(Persoana p, Date dataConsultatie, String specializareMedic, String numeMedic, String diagnostic, String medicamentatieRecomandata, List<String> tipuriAnalizeRecomandate) {
        this.persoana = p;
        this.dataConsultatie = dataConsultatie;
        this.specializareMedic = specializareMedic;
        this.numeMedic = numeMedic;
        this.diagnostic = diagnostic;
        this.medicamentatieRecomandata = medicamentatieRecomandata;
        this.tipuriAnalizeRecomandate = tipuriAnalizeRecomandate;
    }

    public Persoana getPersoana() {
        return persoana;
    }

    public Date getDataConsultatie() {
        return dataConsultatie;
    }

    public String getSpecializareMedic() {
        return specializareMedic;
    }

    public String getNumeMedic() {
        return numeMedic;
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
