import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class PostgreSQL {
    public Connection conectare(){
        Connection c = null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager
                    .getConnection("jdbc:postgresql://localhost:5432/Policlinica", "postgres", "***");
            c.setAutoCommit(false);
            System.out.println("S-a reusit!");
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }
        return c;
    }
}