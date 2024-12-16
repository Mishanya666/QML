import QtQuick 2.15

Rectangle {
    property alias headerText: headerLabel.text
    signal backPressed()

    color: "#bdbdbd"
    border.color: "black"
    border.width: 1
    height: 50
    width: parent.width

    Text {
        id: headerLabel
        text: "Traffic Light"
        anchors.centerIn: parent
        color: "black"
        font.pointSize: 16
    }

    Rectangle {
        id: backButton
        visible: stackView.depth > 1 
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
