package client;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import javafx.scene.control.PasswordField;
import javafx.stage.Stage;

public class LoginScreenControllerTest {
	private static LoginScreenController loginScreenController;
	 private PasswordField PasswordTextField;
	 private ConnectionController client;			// user database handler.
	 private String userName;
	 private Stage curr;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		//loginScreenController = new LoginScreenController();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		/*userName = null;*/
		String wrongSubscriberUsername = "112";
		String wrongSubscriberPassword = "1512";
		
		String correctSubscriberUsername = "333";
		String correctSubscriberPassword = "111";
		String correctSubscriberName = "Gal";
		
		String caseSensitiveCorrectSubscriberUsername = "888";
		String caseSensitiveIncorrectPassword = "gta";
		String caseSensitiveCorrectPassword = "GTA";
		String incorrectCaseSensitiveSubscriberName = null;
		String correctCaseSensitiveSubscriberName = "Ben";

		
		String correctLibrarianUsername = "987";
		String correctLibrarianPassword = "456";
		String correctLibrarianName = "Michael";
		
		String correctManagerUsername = "123";
		String correctManagerPassword = "321";
		String correctManagerName = "Alex";
		
		String frozenSubscriberUsername = "111";
		String frozenSubscriberPassword = "222";
		String frozenSubscriberPassword = "Chris";
		
		String lockedSubscriberUsername = "9999";
		String lockedSubscriberPassword = "111";
		
		String emptyUsername = "";
		String emptyPassword = "";
		
	}

	@After
	public void tearDown() throws Exception {
	}
	/******************************TEST*******************************/
	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void correctStudentInputTest() {
		
	}
	
	@Test
	public void correctLibrarianInputTest() {
		
	}
	
	@Test
	public void correctManagerInputTest() {
		
	}	
	
	@Test
	public void wrongPasswordInputTest() {
		
	}
	
	@Test
	public void wrongUsernameInputTest() {
		
	}
	
	@Test
	public void lockedStudentBlockingTest() {
		
	}
	
	@Test
	public void frozenStudentAcceptanceTest() {
		
	}
	
	@Test
	public void emptyInputTest() {
		
	}
	
	@Test
	public void emptyPasswordTest() {
		
	}
	
	@Test
	public void emptyUsernameTest() {
		
	}
	
	@Test
	public void caseSensitivePasswordTest() {
		
	}

}
