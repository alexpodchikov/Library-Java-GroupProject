package client;


import java.io.IOException;
import java.util.ArrayList;
import java.util.EventObject;
import java.util.Optional;
import common.ClientToServerMessage;
import common.ChatIF;
import common.Student;
import javafx.application.Platform;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Dialog;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.TextInputDialog;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import common.EQueryOption;

public class MainScreen implements ChatIF {
	
	public final static int DEFAULT_PORT = 5555;			// default port to connect.
	public final static String DEFAULT_HOST = "localhost";	// default host to connect.
	private ConnectionController connectionController;			// product database handler.
	private int Port;
	private String Host;
	
	  @FXML
	private Label connectionStatus;
	  @FXML
	 private TextField searchStudentTextFieldID;
	
	  public MainScreen() {
		Host = DEFAULT_HOST;
		Port = DEFAULT_PORT;
	}

	public void establishConnection(ActionEvent event) {
		try {
			if (connectionController != null && connectionController.isConnected())
				{
				connectionController.closeConnection();
				}
				connectionController = new ConnectionController(Host, Port,this);
				connectionStatus.setText("Connected");
				connectionStatus.setTextFill(Color.GREEN);
				}
	 catch (IOException e) {
			System.out.println(e);
			connectionStatus.setText("Disconnected");
			connectionStatus.setTextFill(Color.RED);
	}
	}
	
	@FXML
	public void quitApplication(ActionEvent event) {
    	try {
    		if (connectionController != null &&
    				connectionController.isConnected())     ///////////DO WE NEED IT?????? if so use function
    			connectionController.closeConnection();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 Platform.exit();
	     System.exit(0);
	}
	

	
		@Override
		public void display(Object msg) {
			if (msg == null) {
				System.out.println("> Server returned null");
			}
			else System.out.println("> Server returned: "+msg.toString());
			
			/**
			 * Display error dialog is server returned null.
			 * TODO: make stage factory.
			 */
			 Platform.runLater(new Runnable() {                          
		            @Override
		            public void run() {
		                try{
		                	if (msg == null) {
		                		Alert alert = new Alert(AlertType.ERROR);
		                		alert.setTitle("Error");
		                		alert.setHeaderText("Entry not found");
		                		alert.setContentText("Server didn't find the entry requested!");
		                		alert.show();
		                		return;
		                	}
		                    Stage MainStage;
		            		Stage stage = getStage(msg);
		            		if (stage != null) {
		            			stage.show();
		            		}
		            		else {
		            			//TODO: add suitable stage
		            		}
  
		                }
		                catch(Exception e) {
		                	System.out.println("Invoke later failed..");
		                	e.printStackTrace();
		                }
		            }
		            
		        	
		        	/**
		        	 * Get suitable stage for suitable form by object type..
		        	 * @param object
		        	 * @return suitable stage
		        	 * @throws Exception
		        	 */
		        	private Stage getStage(Object object) throws Exception {
		        		Stage stage= null;
		        	  	FXMLLoader loader;
		        		Pane root;
		        		// get product stage
		        		if (object instanceof Student) {
		        			stage = new Stage();
		        			loader = new FXMLLoader();
		        			root = loader.load(getClass().getResource("/client/UpdateScreen.fxml").openStream());
		        			
		        			UpdateScreen controller = loader.getController();
		        			controller.setStudent((Student)object, connectionController);
		        			Scene scene = new Scene(root);					
		        			stage.setScene(scene);	
		        			stage.setResizable(false);
		        		}
		        		return stage;
		        	}
		        });
			}
	
		@FXML
		private void SearchClick(ActionEvent event) {
	    	if (connectionController == null || !connectionController.isConnected()) { 
	    		connectionStatus.setText("Disconnected");             
				connectionStatus.setTextFill(Color.RED);
	    		return;
	    	}

			String input = searchStudentTextFieldID.getText();
			ArrayList<String> paramSet = new ArrayList<String>();
    		paramSet.add(input);
    		//System.out.println(input);
    	    ClientToServerMessage messageToSend = new ClientToServerMessage(
    	    EQueryOption.GET_STUDENT_INFO, paramSet, "student");
    	    connectionController.handleMessageFromClientUI(messageToSend);
    	    ((Node)event.getSource()).getScene().getWindow().hide(); //hiding primary window
			Stage stage = new Stage();
			FXMLLoader loader = new FXMLLoader();
			Pane root;
			try {
			root = loader.load(getClass().getResource("/client/UpdateScreen.fxml").openStream());
				Scene scene = new Scene(root);			
				stage.setScene(scene);		
				stage.show();
				
			} catch (IOException e) {
				// TODO add to error manager
				e.printStackTrace();
			}
			
		}
			

}
