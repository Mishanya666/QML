import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: pageYellow
    color: "yellow"
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
            text: "Go to Green"
            onClicked: stackView.push("Page_green.qml")
        }
    }
}
