package client;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * Program main entry point.
 *
 */
public class Main extends Application {

	@Override
	public void start(Stage primaryStage) throws Exception {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(MainScreen.class.getResource("/client/MainScreen.fxml"));
			Pane LibrarianMainMenu = loader.load();
            Scene scene = new Scene(LibrarianMainMenu);
			primaryStage.setTitle("Librarian Main Menu");
            primaryStage.setScene(scene);
            primaryStage.setResizable(false);
            primaryStage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
	}

	public static void main(String[] args) {
		launch(args);
	}

}
