import example.javafx.circles {
    Util {
        ...
    }
}

import java.lang {
    Math {
        random
    }
}

import javafx.animation {
    KeyFrame,
    Timeline
}
import javafx.application {
    Application
}
import javafx.scene {
    Group,
    Scene
}
import javafx.scene.effect {
    BlendMode,
    BoxBlur
}
import javafx.scene.paint {
    Color,
    CycleMethod,
    LinearGradient,
    Stop
}
import javafx.scene.shape {
    Circle,
    Rectangle,
    StrokeType
}
import javafx.stage {
    Stage
}
import javafx.util {
    Duration
}

shared void run()
        => Application.launch(`ColorfulCircles`,
                *process.arguments);

shared class ColorfulCircles() extends Application() {

    function hex(Integer color)
            => "#" + Integer.format(color, #10);

    shared actual void start(Stage primaryStage) {
        value root = Group();
        value scene
                = Scene(root, 800.0, 600.0,
                        Color.black);
        primaryStage.setScene(scene);

        value circles = Group();
        for (i in 0:30) {
            value circle
                    = Circle(150.0,
                        Color.web("white", 0.05));
            circle.strokeType = StrokeType.outside;
            circle.stroke = Color.web("white", 0.16);
            circle.strokeWidth = 4.0;
            circles.children.add(circle);
        }
        circles.effect = BoxBlur(10.0, 10.0, 3);

        value stops = [
            [0.0, #f8bd55],
            [0.14, #c0fe56],
            [0.28, #5dfbc1],
            [0.43, #64c2f8],
            [0.57, #be4af7],
            [0.71, #ed5fc2],
            [0.85, #ef504c],
            [1.0, #f2660f]
        ];
        value colors
                = Rectangle(scene.width, scene.height,
                    LinearGradient(0.0, 1.0, 1.0, 0.0,
                        true,
                        CycleMethod.noCycle,
                        for ([offset, color] in stops)
                            Stop(offset,
                                Color.web(hex(color)))));
        colors.widthProperty()
              .bind(scene.widthProperty());
        colors.heightProperty()
              .bind(scene.heightProperty());
        colors.blendMode = BlendMode.overlay;

        value rectangle
                = Rectangle(scene.width, scene.height,
                            Color.black);
        value blendModeGroup
                = Group(Group(rectangle, circles),
                        colors);
        root.children.add(blendModeGroup);

        value timeline = Timeline();
        for (circle in circles.children) {
            timeline.keyFrames.addAll(
                KeyFrame(Duration.zero,
                    keyValue(circle.translateXProperty(),
                                random() * 800),
                    keyValue(circle.translateYProperty(),
                                random() * 600)),
                KeyFrame(Duration(4.0k),
                    keyValue(circle.translateXProperty(),
                                random() * 800),
                    keyValue(circle.translateYProperty(),
                                random() * 600)));
        }
        timeline.play();

        primaryStage.show();
    }

}
