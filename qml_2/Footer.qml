import QtQuick 2.15
import QtQuick.Layouts 1.15

RowLayout {
    spacing: 2

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            anchors.centerIn: parent
            text: "1"
        }
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            anchors.centerIn: parent
            text: "2"
        }
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "#bdbdbd"
        border.color: "black"
        border.width: 1
        Text {
            anchors.centerIn: parent
            text: "3"
        }
    }
}
