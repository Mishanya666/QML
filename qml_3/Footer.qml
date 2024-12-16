import QtQuick 2.15
import QtQuick.Layouts 1.15

RowLayout {
    id: footer
    spacing: 2


    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            id: buttonText1
            anchors.centerIn: parent
            text: "1"
            color: "black"
            font.pointSize: 16
            }

        MouseArea {
            anchors.fill: parent
            onClicked: footer.buttonClicked(1)
            }
        }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            id: buttonText2
            anchors.centerIn: parent
            text: "2"
            color: "black"
            font.pointSize: 16
            }

        MouseArea {
            anchors.fill: parent
            onClicked: footer.buttonClicked(2)
            }
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            id: buttonText3
            anchors.centerIn: parent
            text: "3"
            color: "black"
            font.pointSize: 16
            }

        MouseArea {
            anchors.fill: parent
            onClicked: footer.buttonClicked(3)
            }
    }
    signal buttonClicked(int buttonIndex)
}
