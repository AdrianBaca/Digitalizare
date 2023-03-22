import jakarta.persistence.Column;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.hibernate.validator.constraints.UniqueElements;


public class Persoana {
    @NotNull(message = "Numele trebuie completat!")
    @Size(max=250, message = "Numele nu trebuie sa aiba mai mult de 250 caractere!")
    private String nume;
    @NotNull(message = "Prenumele trebuie completat!")
    private String prenume;
    @NotNull(message = "Adresa trebuie completata!")
    private String adresa;
    @UniqueElements
    @NotNull(message = "Adresa de email trebuie completata!")
    private String email;
    @NotNull(message = "Numarul de telefon trebuie completat!")
    @Column(unique=true)
    private String telefon;
    public Persoana(String nume, String prenume, String adresa,String email, String telefon) {
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
    public String afiseazaDateContact() {
        return "Persoana " + nume + " " + prenume + " are adresa de e-mail: " + email + " și numărul de telefon: " + telefon + ".";
    }
    @Override
    public String toString() {
        return "Persoana " + nume + "  "+prenume +" are adresa: " + adresa + ".";
    }
}
