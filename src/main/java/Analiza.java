import jakarta.validation.constraints.NotNull;

public class Analiza {
    @NotNull(message = "Trebuie completat!")
    private String numeAnaliza;
    @NotNull(message = "Trebuie completat!")
    private String descriereAnaliza;
    @NotNull(message = "Trebuie completat!")
    private double pretAnaliza;

    public Analiza(String numeAnaliza, String descriereAnaliza, double pretAnaliza) {
        this.numeAnaliza = numeAnaliza;
        this.descriereAnaliza = descriereAnaliza;
        this.pretAnaliza = pretAnaliza;
    }

    public Analiza(String numeAnaliza, double pretAnaliza) {
        this.numeAnaliza=numeAnaliza;
        this.pretAnaliza=pretAnaliza;
    }

    public String getNumeAnaliza() {
        return numeAnaliza;
    }

    public String getDescriereAnaliza() {
        return descriereAnaliza;
    }

    public double getPretAnaliza() {
        return pretAnaliza;
    }

    public void setDescriereAnaliza(String descriereAnaliza) {
        this.descriereAnaliza = descriereAnaliza;
    }

    public void setPretAnaliza(double pretAnaliza) {
        this.pretAnaliza = pretAnaliza;
    }
}
