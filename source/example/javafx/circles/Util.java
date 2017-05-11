package example.javafx.circles;

import javafx.animation.KeyValue;
import javafx.beans.property.DoubleProperty;

class Util {
    static KeyValue keyValue(DoubleProperty target, double endValue) {
        return new KeyValue(target, endValue);
    }
}
