package server;
// This file contains material supporting section 3.7 of the textbook:
// "Object Oriented Software Engineering" and is issued under the open-source
// license found at www.lloseng.com 

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import common.ClientToServerMessage;

import com.mysql.jdbc.Statement;
import ocsf.server.*;

/**
 * This class overrides some of the methods in the abstract 
 * superclass in order to give more functionality to the server.
 *
 * @author Dr Timothy C. Lethbridge
 * @author Dr Robert Lagani&egrave;re
 * @author Fran&ccedil;ois B&eacute;langer
 * @author Paul Holden
 * @version July 2000
 */
public class EchoServer extends AbstractServer 
{
  //Class variables *************************************************
  
  /**
   * The default port to listen on.
   */
	
	  public final static String SQL_HOST = "jdbc:mysql://localhost/student"; 
	  public final static String SQL_USERNAME = "root";
	  public final static String SQL_PASSWORD = "vomy123";
	  final public static int DEFAULT_PORT = 5555;
  
	  

	  public static int ListeningPort;
	  public static String SqlHost;
	  public static String SqlUsername;
	  public static String SqlPassword;
  //Constructors ****************************************************
  
  /**
   * Constructs an instance of the echo server.
   *
   * @param port The port number to connect on.
   */
  public EchoServer(int port) 
  {
    super(port);
  }

  
  //Instance methods ************************************************
 
private static void parseMessage(Object msg,ConnectionToClient client) {
	 Object objectToReturn = null;
	  try 
		{
          Class.forName("com.mysql.jdbc.Driver").newInstance();
      } catch (Exception ex){ 
    	  System.out.println("Driver registering failed: ");
    	  System.out.println(ex);
      }
      
      try 
      {
          Connection conn = DriverManager.getConnection(SqlHost,SqlUsername,SqlPassword);
         
          System.out.println("SQL connection succeed");
          ClientToServerMessage message = (ClientToServerMessage)msg;
          System.out.println(message);
          Statement stmt = (Statement) conn.createStatement();
          String query = Query.getQuery(message.getQueryOption(), message.getParams());
  		  System.out.println("QUERY: "+query);
          boolean isResultSet = stmt.execute(query);
          if (isResultSet) {
  	  	      ResultSet rs = stmt.getResultSet();
          if (message.getObjectType() != null) {
	  	  	      objectToReturn = EntityFactory.getEntity(message.getObjectType(), rs);
	  	  	      System.out.println("server needs to return: "+objectToReturn);
	  	  	      client.sendToClient(objectToReturn);
	  	      }
	  	      rs.close();
		  }
	      conn.close();
       			
   	}  catch (Exception ex) {
  	  ex.printStackTrace();
  	  try {
			client.sendToClient(null);
		} catch (IOException e) {
			System.out.println("Cant even send null..");
		}
    }
    finally {
  	  //this.sendToAllClients(objectToReturn);
  	  //TODO: send only to one client
  	  
  	  
    }
}
  
  /**
   * This method handles any messages received from the client.
   *
   * @param msg The message received from the client.
   * @param client The connection from which the message originated.
   */
  public void handleMessageFromClient
    (Object msg, ConnectionToClient client)
  {
	    System.out.println("Message received: " + msg + " from " + client);
	  //  this.sendToAllClients(msg);
	    parseMessage(msg,client);
	  }

    
  /**
   * This method overrides the one in the superclass.  Called
   * when the server starts listening for connections.
   */
  protected void serverStarted()
  {
    System.out.println("Server listening for connections on port " + getPort());
  }
  
  /**
   * This method overrides the one in the superclass.  Called
   * when the server stops listening for connections.
   */
  protected void serverStopped()
  {
    System.out.println("Server has stopped listening for connections.");
  }
  
  //Class methods ***************************************************
  
  /**
   * This method is responsible for the creation of 
   * the server instance (there is no UI in this phase).
   *
   * @param args[0] The port number to listen on.  Defaults to 5555 
   *          if no argument is entered.
   */
  public static void main(String[] args) 
  {

    try
    {
    	ListeningPort = Integer.parseInt(args[0]); //Get port from command line
    }
    catch(Throwable t)
    {
      ListeningPort = DEFAULT_PORT; //Set port to 5555
    }
    try {
    	SqlHost = args[1];
    	SqlUsername = args[2];
    	SqlPassword = args[3];
    }
    catch(Throwable t) {
    	SqlHost = SQL_HOST;
    	SqlUsername = SQL_USERNAME;
    	SqlPassword = SQL_PASSWORD;
    }
	
    EchoServer sv = new EchoServer(ListeningPort);
   

    
    try 
    {
        System.out.println("\nSQL Server registered data: ");
        System.out.println("\tSQL host:\t\t"+SqlHost);
        System.out.println("\tSQL username:\t\t"+SqlUsername);
        System.out.println("\tSQL password:\t\t"+SqlPassword);
        System.out.println();
      sv.listen(); //Start listening for connections
    } 
    catch (Exception ex) 
    {
      System.out.println("ERROR - Could not listen for clients!");
    }
  }
}
//End of EchoServer class
