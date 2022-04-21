import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    id: win
    minimumWidth: 310
    minimumHeight: 100
    width: 310
    height: 100
    color: "black"
    visible: true
    title: qsTr("Video Player")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10

        RowLayout {
            id: screen_line
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            spacing: 10
            Rectangle {
                id: screen
                anchors.top: parent.top
                height: 20
                width: 230
                color: "black"
                radius: 3
                border.width: 1
                border.color: "grey"

                RowLayout {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10

                    MyScreenText {
                        id: track_num
                        text_height: 16
                        text_width: 46
                        screen_text: "TRACK: 0001"
                    }
                    MyScreenText {
                        id: track_name
                        text_height: 16
                        text_width: 122
                        screen_text: "MICHAEL JACKSON - DANGEROUS"
                    }
                    MyScreenText {
                        id: track_time
                        text_height: 16
                        text_width: 50
                        screen_text: "00:00:00"
                    }
                }
            }
            MyButton {
                id: power
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/power.png"
                onClicked: {
                    track_num.screen_visible = !track_num.screen_visible;
                    track_name.screen_visible = !track_name.screen_visible;
                    track_time.screen_visible = !track_time.screen_visible;

                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525") ? "#00d793" : "#252525";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525") ? "#00d793" : "#252525";

                    label_previous.text_color = (label_previous.text_color == "#252525") ? "#00d793" : "#252525";
                    label_rewind.text_color = (label_rewind.text_color == "#252525") ? "#00d793" : "#252525";
                    label_stop.text_color = (label_stop.text_color == "#252525") ? "#00d793" : "#252525";
                    label_play.text_color = (label_play.text_color == "#252525") ? "#00d793" : "#252525";
                    label_pause.text_color = (label_pause.text_color == "#252525") ? "#00d793" : "#252525";
                    label_forward.text_color = (label_forward.text_color == "#252525") ? "#00d793" : "#252525";
                    label_next.text_color = (label_next.text_color == "#252525") ? "#00d793" : "#252525";
                }
            }
        }

        RowLayout {
            id: indicator_line
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: screen_line.bottom
            anchors.topMargin: 10
            spacing: 10
            height: 3
            width: 270
            MyIndicator {
                id: ind_previous
            }
            MyIndicator {
                id: ind_rewind
            }
            MyIndicator {
                id: ind_stop
            }
            MyIndicator {
                id: ind_play
            }
            MyIndicator {
                id: ind_pause
            }
            MyIndicator {
                id: ind_forward
            }
            MyIndicator {
                id: ind_next
            }
        }

        RowLayout {
            id: button_line
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: indicator_line.bottom
            anchors.topMargin: 3
            spacing: 10
            height: 20
            width: 270
            MyButton {
                id: but_previous
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/previous.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : (ind_previous.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_rewind
                iconHeight: 10
                iconWidth: 10
                iconSource: "/icon/fast-rewind.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : (ind_rewind.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_stop
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/stop.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : (ind_stop.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_play
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/play.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : (ind_rewind.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_pause
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/pause.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : (ind_rewind.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_forward
                iconHeight: 10
                iconWidth: 10
                iconSource: "/icon/fast-forward.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : (ind_rewind.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                }
            }
            MyButton {
                id: but_next
                iconHeight: 8
                iconWidth: 8
                iconSource: "/icon/next.png"
                onClicked: {
                    ind_previous.colorIndicator = (ind_previous.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_rewind.colorIndicator = (ind_rewind.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_stop.colorIndicator = (ind_stop.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_play.colorIndicator = (ind_play.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_pause.colorIndicator = (ind_pause.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_forward.colorIndicator = (ind_forward.colorIndicator == "#252525")
                            ? "#252525" : "#00d793";
                    ind_next.colorIndicator = (ind_next.colorIndicator == "#252525")
                            ? "#252525" : (ind_rewind.colorIndicator == "#00d793")
                            ? "#ff0036"  : "#00d793";
                }
            }
        }

        RowLayout {
            id: label_line
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: button_line.bottom
            spacing: 10
            height: 20
            width: 270

            MyLabel {
                id: label_previous
                text: "previous"
            }
            MyLabel {
                id: label_rewind
                text: "rewind"
            }
            MyLabel {
                id: label_stop
                text: "stop"
            }
            MyLabel {
                id: label_play
                text: "play"
            }
            MyLabel {
                id: label_pause
                text: "pause"
            }
            MyLabel {
                id: label_forward
                text: "forward"
            }
            MyLabel {
                id: label_next
                text: "next"
            }
        }

        ProgressBar {
            id: progress
            anchors.horizontalCenter: parent.horizontalCenter
            height: 1
        }
    }
}
