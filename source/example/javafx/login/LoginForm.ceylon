import java.lang {
    JString=String
}

import javafx.application {
    Application
}
import javafx.geometry {
    Pos,
    Insets
}
import javafx.scene {
    Scene
}
import javafx.scene.control {
    Button,
    Label,
    TextField,
    PasswordField
}
import javafx.scene.layout {
    GridPane,
    HBox
}
import javafx.scene.text {
    Text
}
import javafx.stage {
    Stage
}

shared void run()
        => Application.launch(`LoginForm`,
                *process.arguments);

shared class LoginForm() extends Application() {

    shared actual void start(Stage primaryStage) {
        primaryStage.title = "JavaFX Welcome!";

        value grid = GridPane();
        grid.alignment = Pos.center;
        grid.hgap = 10.0;
        grid.vgap = 10.0;
        grid.padding = Insets(25.0, 25.0, 25.0, 25.0);

        value scenetitle = Text("Welcome");
//        scenetitle.font = Font.font("Tahoma", FontWeight.normal, 20.0);
        grid.add(scenetitle, 0, 0, 2, 1);

        value userName = Label("User Name:");
        grid.add(userName, 0, 1);

        value userTextField = TextField();
        grid.add(userTextField, 1, 1);

        value pw = Label("Password:");
        grid.add(pw, 0, 2);

        value pwBox = PasswordField();
        grid.add(pwBox, 1, 2);

        value btn = Button("Sign in");
        value hbBtn = HBox(10.0);
        hbBtn.alignment = Pos.bottomRight;
        hbBtn.children.add(btn);
        grid.add(hbBtn, 1, 4);

        value scene = Scene(grid, 300.0, 275.0);
        scene.stylesheets
             .add(JString("/example/javafx/login/Login.css"));
        primaryStage.setScene(scene);

        value actiontarget = Text();
        grid.add(actiontarget, 1, 6);

        btn.setOnAction((e) {
//            actiontarget.fill = Color.firebrick;
            actiontarget.text = "Sign in button pressed";
        });

        scenetitle.id = "welcome-text";
        actiontarget.id = "actiontarget";

        primaryStage.show();
    }

}