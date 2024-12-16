import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: pageGreen
    color: "green"
    width: parent.width
    height: parent.height

    Column {
        spacing: 10
        anchors.centerIn: parent

        Button {
            text: "Go to Red"
            onClicked: stackView.push("Page_red.qml")
        }

        Button {
            text: "Go to Yellow"
            onClicked: stackView.push("Page_yellow.qml")
        }
    }
}
