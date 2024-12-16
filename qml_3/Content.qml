import QtQuick 2.15

Rectangle {

    color: "#f5f5f5"
    border.color: "black"
    border.width: 1

    property alias contentText: content.text

        Text {
            id: content
            anchors.centerIn: parent
            text: "Content"
            color: "black"
            font.pointSize: 16
        }
}
