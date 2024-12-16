import QtQuick 2.15

Rectangle {
    color: "#bdbdbd"
    border.color: "black"
    border.width: 1

    property alias headerText: header.text
    signal backPressed()

    Text {
        id: header
        anchors.centerIn: parent
        text: "Header"
        color: "black"
        font.pointSize: 16
    }

    Rectangle {
        id: backButton
        visible: header.text.indexOf("Back") !== -1
        width: 50
        height: parent.height
        anchors.left: parent.left
        color: "transparent"

        Text {
            text: "\u25C0"
            anchors.centerIn: parent
            color: "black"
            font.pointSize: 16
        }

        MouseArea {
            anchors.fill: parent
            onClicked: backPressed()
        }
    }
}
