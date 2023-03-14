import java.util.Date;
import java.util.List;
import java.util.Map;

public class RezultatAnalize {
    private String numePacient;
    private Date dataAnalize;
    private List<String> tipuriAnalize;
    private Map<String, Double> rezultateAnalize;

    public RezultatAnalize(String numePacient, Date dataAnalize, List<String> tipuriAnalize, Map<String, Double> rezultateAnalize) {
        this.numePacient = numePacient;
        this.dataAnalize = dataAnalize;
        this.tipuriAnalize = tipuriAnalize;
        this.rezultateAnalize = rezultateAnalize;
    }

    public String getNumePacient() {
        return numePacient;
    }

    public Date getDataAnalize() {
        return dataAnalize;
    }

    public List<String> getTipuriAnalize() {
        return tipuriAnalize;
    }

    public Map<String, Double> getRezultateAnalize() {
        return rezultateAnalize;
    }

    public void setRezultateAnalize(Map<String, Double> rezultateAnalize) {
        this.rezultateAnalize = rezultateAnalize;
    }
}