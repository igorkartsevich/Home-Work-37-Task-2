import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Item {
    id:root
    height: 20
    width: 30

    property alias iconSource: button.icon.source
    property alias iconHeight: button.icon.height
    property alias iconWidth: button.icon.width

    signal clicked()

    Button {
        id: button
        anchors.fill: parent
        onClicked: root.clicked()
        icon.color: "transparent"

        background:
            Rectangle {
            Gradient {
                id: normal
                GradientStop {position: 0.0; color: "grey" }
                GradientStop {position: 0.7; color: "lightgrey" }
                GradientStop {position: 1.0; color: "grey" }
            }
            Gradient {
                id: hovered
                GradientStop {position: 0.0; color: "grey" }
                GradientStop {position: 0.7; color: "white" }
                GradientStop {position: 1.0; color: "grey" }
            }
            Gradient {
                id: pressed
                GradientStop {position: 0.0; color: "grey" }
                GradientStop {position: 0.8; color: "white" }
                GradientStop {position: 1.0; color: "grey" }
            }
            radius: 3
            border.width: 1
            border.color: "grey"
            gradient: button.pressed ? pressed :
                                       button.hovered ? hovered : normal
        }
    }
}
