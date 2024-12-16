import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Traffic Light"

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: "Page_red.qml"
    }

    Header {
        id: header
        height: 50
        anchors.top: parent.top
        width: parent.width
        onBackPressed: stackView.pop()
    }
}
