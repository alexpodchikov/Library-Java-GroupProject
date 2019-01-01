package server;

	import java.util.HashMap;
	import java.util.List;

	import common.EQueryOption;

	/**
	 * Class: Query
	 * Store all server queries related to our database.
	 *
	 */
	public class Query {

		/// Product related names as in the Database
		private final static String STUDENT_TABLE = "student.student";
		private final static String STUDENT_ID = "StudentID";
		private final static String STUDENT_NAME = "StudentName";
		private final static String STATUS_MEMBERSHIP = "StatusMembership";
		private final static String OPERATION = "Operation";
		private final static String FREEZE = "Freeze";
		
		///

		
		/**
		 * HashMap contains EQueryOption as key
		 * and number of parameters required as value.
		 */
		private static HashMap<EQueryOption, Integer> enumParamNum = startMap();
		
		/**
		 * Static initialization of enumParameterNumber
		 * @return initialized HashMap
		 */
		private static HashMap<EQueryOption, Integer> startMap()
	    {
			HashMap<EQueryOption, Integer> map = new HashMap<EQueryOption,Integer>();
	        map.put(EQueryOption.GET_STUDENT_INFO, 1);		// Params: ID,Name
	        map.put(EQueryOption.UPDATE_STATUS_MEMBERSHIP, 2);	// Params:ID, statusMembership.
	        return map;
	    }
		
		
		/**
		 * Get suitable query
		 * params order must be as table columns
		 * @param queryOption 
		 * @return Query string
		 */
		public static String getQuery(EQueryOption queryOption, List<String> params) throws Exception{
			//System.out.println(params);
			//System.out.println("size: "+params.size());
			if (params.size() != enumParamNum.get(queryOption)) {
				//System.out.println("got you!!");
				return "";
				// TODO: add invalid parameters number error or Exception 
			}
			
			switch(queryOption) {
			case GET_STUDENT_INFO:
				return getStudentInfo(params.get(0));
				
			case UPDATE_STATUS_MEMBERSHIP:
				return updateStudentInfo(params.get(0),params.get(1));
				
				default:
					return "";	// TODO: add error or exception (invalid enum option).
			}
		}
		
		/**
		 * Get query string for getting full product info from product table
		 * by productID.
		 * @param productID
		 * @return Product Info query string.
		 */
		private static String getStudentInfo(String ID) {
			ID = "\'"+ ID+ "\'";
			String queryToReturn = "SELECT " + STUDENT_ID + ","+ STUDENT_NAME +","+ STATUS_MEMBERSHIP + " FROM " + STUDENT_TABLE + " WHERE " +
					STUDENT_ID + " = " + ID+";";
			return queryToReturn;
		}
		
		/**
		 * Get query string for updating product info.
		 * @param productID new ProductID string
		 * @param productName new Product Name
		 * @param productType new Product Type
		 * @return product info update query string.
		 */
		private static String updateStudentInfo(String ID, String Status) {
			ID = "\'"+ ID+ "\'";
			Status = "\'"+ Status+ "\'";
				////////////////////////// TO BE CONTINUED.....
			String queryToReturn = "UPDATE " + STUDENT_TABLE + " SET " +
					STATUS_MEMBERSHIP + " = " + Status + 
					" WHERE " + STUDENT_ID + " = " + ID+";";
			return queryToReturn;
		}
		

}
