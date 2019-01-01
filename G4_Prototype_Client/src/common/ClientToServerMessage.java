package common;

import java.io.Serializable;
import java.util.ArrayList;

import common.EQueryOption;

/**
 * Message to be sent from client to server.
 *
 */
public class ClientToServerMessage implements Serializable {
	
	private static final long serialVersionUID = 3645831604535073047L;
	private EQueryOption mQueryOption;
	private ArrayList<String> mParams; 
	private String mObjectType;
	
	public ClientToServerMessage(EQueryOption queryOption, ArrayList<String> params,
			String objectType) {
		mQueryOption = queryOption;
		mParams = new ArrayList<String>();
		for (String parameter : params) {
		mParams.add(parameter);
		}
		mObjectType = objectType;
	}

	/**
	 * @return the mQueryOption
	 */
	public EQueryOption getQueryOption() {
		return mQueryOption;
	}

	/**
	 * @return the mParams
	 */
	public ArrayList<String> getParams() {
		return mParams;
	}

	/**
	 * @return the mObjectToReturn
	 */
	public String getObjectType() {
		return mObjectType;
	}


	@Override
	public String toString() {
		return "ClientToServerMessage [mQueryOption=" + mQueryOption + ", mParams=" + mParams + ", mObjectType="
		        + mObjectType + "]";
	}
	
	
	
}
