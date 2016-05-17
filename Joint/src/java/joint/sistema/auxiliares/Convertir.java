package joint.sistema.auxiliares;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author jdiaz
 */
public class Convertir {
     public Object[][] ResultSetToArray(ResultSet rs){
        Object obj[][]=null;
        try{
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();
            int numCols = rsmd.getColumnCount();
            int numFils =rs.getRow();
            obj=new Object[numFils][numCols];
            int j = 0;
            rs.beforeFirst();
            while (rs.next()){
                for (int i=0;i<numCols;i++){
                    obj[j][i]=rs.getObject(i+1);
                }
                j++;
            }
        }
        catch(Exception e){
 
        }
        return obj;
    }
}
