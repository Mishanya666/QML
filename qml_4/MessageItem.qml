import QtQuick 2.15
import QtQuick.Layouts 1.3

Item {
    id: messageItem
    property alias name: nameText.text
    property alias time: timeText.text

    width: ListView.view.width 
    height: 60

    Rectangle {
        anchors.fill: parent
        color: index % 2 === 0 ? "#F5F5F5" : "#E0E0E0"
        radius: 8

        RowLayout {
            anchors.fill: parent
            spacing: 12

            Rectangle {
                width: 8
                height: parent.height
                color: "transparent"
            }
            Text {
                id: nameText
                font.pointSize: 14
                color: "#212121"
                Layout.fillWidth: true
            }
            Text {
                id: timeText
                font.pointSize: 12
                color: "#757575"
                horizontalAlignment: Text.AlignRight
            }
            Rectangle {
                width: 8
                height: parent.height
                color: "transparent"
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (model) model.remove(index);
        }
    }
}
