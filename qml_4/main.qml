import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.15

Window {
    width: 400
    height: 700
    visible: true
    title: qsTr("Task_for_ListView_Model")

    property int defMargin: 10

    ListModel {
        id: my_model
    }

    Page {
        id: page
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
            delegate: Item {
                width: parent.width
                height: 60

                Rectangle {
                    anchors.fill: parent
                    color: index % 2 === 0 ? "#F5F5F5" : "#E0E0E0"
                    radius: 8

                    RowLayout {
                        anchors.fill: parent
                        spacing: 12
                        anchors.margins: 8

                        Text {
                            text: model.name
                            font.pointSize: 14
                            color: "#212121"
                            Layout.fillWidth: true
                        }
                        Text {
                            text: model.time
                            font.pointSize: 12
                            color: "#757575"
                            horizontalAlignment: Text.AlignRight
                        }
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        my_model.remove(index);
                    }
                }
            }
        }

        Rectangle {
            id: footer
            height: 70
            width: parent.width
            anchors.bottom: parent.bottom
            color: "#F9F9F9"
            border.color: "#BDBDBD"
            radius: 10

            signal newMessage(string msg)

            RowLayout {
                anchors.fill: parent
                spacing: 10
                anchors.margins: 10

                TextField {
                    id: edtText
                    Layout.fillWidth: true
                    placeholderText: "Write your message..."
                    font.pointSize: 14
                    color: "#212121"
                    background: Rectangle {
                        color: "white"
                        radius: 5
                        border.color: "#BDBDBD"
                    }
                }

                Button {
                    id: btnAddItem
                    text: "Send"
                    background: Rectangle {
                        color: edtText.text.trim() === "" ? "#BDBDBD" : "#6200EE"
                        radius: 5
                    }
                    onClicked: {
                        if (edtText.text.trim() !== "") {
                            footer.newMessage(edtText.text);
                            edtText.clear();
                        }
                    }
                }
            }
        }

        Component.onCompleted: {
            footer.newMessage.connect(function(msg) {
                var newMsg = {
                    name: msg,
                    time: Qt.formatTime(new Date(), "hh:mm:ss")
                };
                my_model.append(newMsg);
            });
        }
    }
}
