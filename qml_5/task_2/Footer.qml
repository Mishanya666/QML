import QtQuick 2.15
import QtQuick.Layouts 1.15

RowLayout {
    id: footer
    spacing: 2

    property int buttonIndex: 0
    signal buttonClicked(int buttonIndex)

    function isSelected(index) {
        return buttonIndex === index;
    }

    function buttonColor(index) {
        if (buttonIndex === 0) {
            return "#bdbdbd";
        }
        return isSelected(index) ? "#616161" : "#e0e0e0";
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: buttonColor(1)
        border.color: "black"
        border.width: 1
        Text {
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
        color: buttonColor(2)
        border.color: "black"
        border.width: 1
        Text {
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
        color: buttonColor(3)
        border.color: "black"
        border.width: 1
        Text {
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
}
