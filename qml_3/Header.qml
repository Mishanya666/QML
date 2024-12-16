import QtQuick 2.15

Rectangle {
    color: "#bdbdbd"
    border.color: "black"
    border.width: 1

    property alias headerText: header.text

        Text {
            id: header
            anchors.centerIn: parent
            text: "Header"
            color: "black"
            font.pointSize: 16
        }
    }

