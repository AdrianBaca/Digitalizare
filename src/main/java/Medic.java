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

    public String afiseazaDateContact(){
        return "Medicul " + super.getNume() + " " + super.getPrenume() + " are adresa de e-mail: " + super.getEmail() + " și numărul de telefon: " + super.getTelefon();
    }

}
