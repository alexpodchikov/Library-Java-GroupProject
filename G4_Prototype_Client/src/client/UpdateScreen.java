package client;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import common.Student;
import common.ClientToServerMessage;
import common.ChatIF;
import common.EQueryOption;

public class UpdateScreen implements Initializable  {
    @FXML
    private Label welcomeID;
    @FXML
    private Label studentNameID;
    @FXML
    private Label StatusMembershipID;
    @FXML
    private Label StudentNameLabelID;
    @FXML
    private Label StudentNameFillID;
    @FXML
    private Label StudentCurrentStatusFillID;
    @FXML
    private Label StudentCurrentStatusID;
    @FXML
	private ComboBox<String> statusMembershipComboBoxID=new ComboBox<String>();
	ConnectionController studentController;
	ObservableList<String> list;
	private String studentID;
	ArrayList<String> statusMembership = new ArrayList<String>(
	Arrays.asList("Locked", "Frozen", "Active","NotRegistered"));
	
	
    @FXML
    void goBackToMainScreenClick(ActionEvent event) {
		((Node)event.getSource()).getScene().getWindow().hide(); //hiding primary window
		Stage stage = new Stage();
		FXMLLoader loader = new FXMLLoader();
		Pane root;
		try {
			root = loader.load(getClass().getResource("/client/MainScreen.fxml").openStream());		
			Scene scene = new Scene(root);			
			stage.setScene(scene);		
			stage.show();
			
		} catch (IOException e) {
			// TODO add to error manager
			e.printStackTrace();
		}
		
    }
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		initComboBox();
	}
   
	public void initComboBox() {
	
		list = FXCollections.observableArrayList(statusMembership);
		statusMembershipComboBoxID.setItems(list);	
	}
	
	public void setStudent(Student student, ConnectionController Controller) throws Exception {
		studentID = student.StudentID;
		StudentNameFillID.setText(student.StudentName);	
		StudentCurrentStatusFillID.setText(student.StatusMembership);
		studentController = Controller;
	}
    
	/**
	 * on button save click, send update query request to server.
	 * @param event button click
	 */
	@FXML
	private void onUpdateClick(ActionEvent event) {
		ArrayList<String> paramSet = new ArrayList<String>();
		String status = statusMembershipComboBoxID.getValue();	
		paramSet.add(studentID);		
		paramSet.add(status);
        System.out.println(paramSet);
		ClientToServerMessage messageToSend = new ClientToServerMessage(
	   	EQueryOption.UPDATE_STATUS_MEMBERSHIP, paramSet,"student");
	   	studentController.handleMessageFromClientUI(messageToSend);
	   
	    //=status
		
	}
}
