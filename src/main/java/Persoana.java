//Persoana, puteam să denumesc clasa și Pacient
public class Persoana {
    private String nume;
    private String prenume;
    private String adresa;
    private String email;
    private String telefon;
    public Persoana(String nume, String prenume, String adresa,String email, String telefon){
        this.nume=nume;
        this.prenume=prenume;
        this.adresa=adresa;
        this.email=email;
        this.telefon=telefon;
    }
    public String getNume() {
        return nume;
    }

    public String getPrenume() {
        return prenume;
    }
    public String getAdresa() {
        return adresa;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }
    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }
    public String afiseazaDateContact(){
        return "Persoana " + nume + " " + prenume + " are adresa de e-mail: " + email + " și numărul de telefon: " + telefon;
    }
    @Override
    public String toString() {
        return "Pacientul " + nume + "  "+prenume +", are adresa: " + adresa;
    }
}
