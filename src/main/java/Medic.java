import java.util.Date;
import java.util.List;

public class Medic extends Persoana {
    private String specializare;
    Medic(String nume, String prenume, String adresa, String email, String specializare, String telefon){
        super(nume,prenume,adresa,email,telefon);
        this.specializare=specializare;

    }
    public String getSpecializare(){
        return specializare;
    }

    public void setSpecializare(String specializare) {
        this.specializare = specializare;
    }
        public void completeazaFisaConsultatie(Persoana persoana, Date data, String s, String diagnostic, String medicamentatie, List<String> analizeRezultate){
        FisaConsultatie fisaC=new FisaConsultatie(persoana, data, s, super.getNume(), diagnostic, medicamentatie,analizeRezultate);
    }

    public String afiseazaDateContact(){
        return super.afiseazaDateContact() + "specializarea "+ specializare;
    }
}
