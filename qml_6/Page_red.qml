import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: pageRed
    color: "red"
    width: parent.width
    height: parent.height

    Column {
        spacing: 10
        anchors.centerIn: parent

        Button {
            text: "Go to Green"
            onClicked: stackView.push("Page_green.qml")
        }

        Button {
            text: "Go to Yellow"
            onClicked: stackView.push("Page_yellow.qml")
        }
    }
}
