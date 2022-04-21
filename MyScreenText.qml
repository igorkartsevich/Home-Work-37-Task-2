import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    id: root
    property int text_height: 10
    property int text_width: 10
    property alias screen_visible: track_numb.visible
    property alias screen_text: track_numb.text
    height: text_height
    width: text_width

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Text {
            id: track_numb
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            text: "TRACK: 0001"
            color: "#00d793"
            font.pixelSize: 8
            visible: false
        }
    }
}
