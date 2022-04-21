import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    id: root
    property alias text: label_text.text
    property alias text_color: label_text.color
    height: 10
    width: 30

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Text {
            id: label_text
            anchors.centerIn: parent
            font.pixelSize: 6
            color: "#252525"
            text: label_text
        }
    }
}
