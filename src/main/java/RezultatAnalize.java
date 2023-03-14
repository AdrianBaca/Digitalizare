import java.util.Date;
import java.util.List;
import java.util.Map;

public class RezultatAnalize {
    private FisaConsultatie fisa;
    private Date dataAnalize;
    private List<String> tipuriAnalize;
    private Map<String, Double> rezultateAnalize;

    public RezultatAnalize(FisaConsultatie fisa, Date dataAnalize, List<String> tipuriAnalize, Map<String, Double> rezultateAnalize) {
        this.fisa = fisa;
        this.dataAnalize = dataAnalize;
        this.tipuriAnalize = tipuriAnalize;
        this.rezultateAnalize = rezultateAnalize;
    }

    public FisaConsultatie getFisaConsultatie() {
        return fisa;
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

    public void setTipuriAnalize(List<String> tipuriAnalize) {
        this.tipuriAnalize=tipuriAnalize;
    }

    public void setDataAnalize(Date dataAnalize) {
        this.dataAnalize=dataAnalize;
    }
}