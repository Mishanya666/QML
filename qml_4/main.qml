import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 400
    height: 700
    visible: true
    title: qsTr("Task_for_ListView_Model")

    ListModel {
        id: my_model
    }

    Page {
        anchors.fill: parent

        Rectangle {
            id: header
            height: 60
            width: parent.width
            anchors.top: parent.top
            color: "#6200EE"
            radius: 10
            Text {
                anchors.centerIn: parent
                text: qsTr("Messages")
                font.pixelSize: 18
                color: "white"
                font.bold: true
            }
        }

        ListView {
            id: messageListView
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: footer.top
            spacing: 5
            clip: true
            model: my_model
            delegate: MessageItem {
                name: model.name
                time: model.time
            }
        }

        Footer {
            id: footer
            anchors.bottom: parent.bottom

            onNewMessage: { 
                var newMsg = {
                    name: msg,
                    time: Qt.formatTime(new Date(), "hh:mm:ss")
                };
                my_model.append(newMsg);
            }
        }
    }
}
