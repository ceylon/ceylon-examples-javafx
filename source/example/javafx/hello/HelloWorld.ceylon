import javafx.application {
    Application
}
import javafx.scene {
    Scene
}
import javafx.scene.control {
    Button
}
import javafx.scene.layout {
    StackPane
}
import javafx.stage {
    Stage
}

shared void run()
        => Application.launch(`HelloWorld`,
                *process.arguments);

shared class HelloWorld() extends Application() {

    shared actual void start(Stage primaryStage) {
        primaryStage.title = "Hello World!";
        value button = Button();
        button.text = "Say 'Hello World'";
        button.setOnAction((event) => print("Hello World!"));
        value root = StackPane();
        root.children.add(button);
        primaryStage.setScene(Scene(root, 300.0, 250.0));
        primaryStage.show();
    }

}
