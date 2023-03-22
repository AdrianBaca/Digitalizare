import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
public class PersoanaDaoImpl implements PersoanaDao{
    private Connection c;
    public PersoanaDaoImpl(){
        PostgreSQL psql=new PostgreSQL();
        c=psql.conectare();
    }

    @Override
    public void adaugare(int p){
        Statement stmt = null;
        try {
            stmt = c.createStatement();
            String sql = "INSERT INTO PERSOANE (IdPersoana,Nume,Prenume,Adresa,Email,Telefon) "
                    + "VALUES ("+p+", 'Paul', 'Mihai', 'Aleea Garofitei',3 ,'Eforie', 'Constanta', 'paul@yahoo.com', '0711111111');";
            stmt.executeUpdate(sql);

            stmt.close();
            c.commit();
            c.close();
        } catch (Exception e) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }
    }
    @Override
    public void stergere(int nr){
        Statement stmt = null;
        try {
            stmt = c.createStatement();
            String sql = "DELETE from PERSOANE where ID = "+nr+";";
            stmt.executeUpdate(sql);

            stmt.close();
            c.commit();
            c.close();
        } catch (Exception e) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }

    }

    @Override
    public void modificare(String tel,int nr) {
        Statement stmt = null;
        try {
            stmt = c.createStatement();
            String sql = "UPDATE PERSOANE set Telefon = "+tel+" where ID="+nr+";";
            stmt.executeUpdate(sql);

            stmt.close();
            c.commit();
            c.close();
        } catch (Exception e) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }
    }

    @Override
    public void interogare() {
        Statement stmt = null;
        int rez=0;
        try {
            stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT COUNT(per.Nume) FROM (PROGRAMARI as pr INNER JOIN PACIENTI as p ON pr.IdProgramare=p.Programare) INNER JOIN PERSOANE as per ON per.IdPersoana=p.Persoana WHERE pr.Data='12/11/2023' GROUP BY per.Nume;");
            rs.close();
            stmt.close();
            c.close();
        } catch (Exception e) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }
    }
}
