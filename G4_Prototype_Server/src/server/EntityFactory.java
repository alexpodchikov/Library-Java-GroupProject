package server;

import java.sql.ResultSet;
import common.Student;

/**
 * Create object entity by string type name.
 *
 */
public class EntityFactory {

	
	public static Object getEntity(String entityName, ResultSet rs) throws Exception {
		Object objectToReturn = null;
		try {
		switch(entityName.toLowerCase().trim()) {
		case "student":
			rs.next();
			objectToReturn = new Student(rs.getString(1),rs.getString(2),rs.getString(3));
		break;
		}
		return objectToReturn;
		}
		catch(Exception e) {
			return null;
		}
	}
}
