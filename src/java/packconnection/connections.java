
package packconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connections {

    public static Connection coneecter(){
        Connection cnx=null;
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            String url="jdbc:oracle:thin:@localhost:1521:orcl";
            cnx=DriverManager.getConnection(url,"srht","srht2013");
        } catch (Exception ex) {
            Logger.getLogger(connections.class.getName()).log(Level.SEVERE, null, ex);
        }

        return cnx;
    }

}
