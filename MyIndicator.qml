import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    id: root
    width: 30
    height: 2
    property alias colorIndicator: indicator.color
    Rectangle {
        id: indicator
        radius: 1
        anchors.fill: parent
        color: "#252525"
    }
}
