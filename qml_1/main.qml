import QtQuick 2.15
import QtQuick.Window 2.15

Window {

    id: mainWindow
    width: 640
    height: 600
    visible: true
    title: qsTr("Hello World")
    Item{
        id: le_d
        Rectangle {
            id: vertical_1
            width: mainWindow.width * 0.08
            height: mainWindow.height * 0.35
            color: "#34ebd2"
            x: mainWindow.width * 0.1
            y: mainWindow.height * 0.5
        }

        Rectangle {
            id: horizontal_1
            width: 180
            height: 50
            color: "#eb34c0"
            anchors.bottom: vertical_1.top
            anchors.left: vertical_1.left
        }

        Rectangle {
            id: horizontal_2
            width: 180
            height: 50
            color: "#eb34c0"
            anchors.bottom: vertical_1.bottom
            anchors.left: vertical_1.left
        }

        Rectangle {
            id: vertical_2
            width: mainWindow.width * 0.08
            height: mainWindow.height * 0.8
            color: "#34ebd2"
            anchors.bottom: horizontal_2.bottom
            anchors.left: horizontal_1.right

        }

        Rectangle {
            id: vertical_3
            width: mainWindow.width * 0.08
            height: mainWindow.height * 0.8
            color: "#34ebd2"
            anchors.bottom: vertical_2.bottom
            anchors.left: vertical_2.right
        }
        Rectangle {
            id: horizontal_3
            width: 180
            height: 50
            color: "#eb34c0"
            anchors.top: vertical_3.top
            anchors.left: vertical_3.right
        }

        Rectangle {
            id: vertical_4
            width: mainWindow.width * 0.08
            height: mainWindow.height * 0.35
            color: "#34ebd2"
            anchors.top: horizontal_3.bottom
            anchors.right: horizontal_3.right
        }

        Rectangle {
            id: horizontal_4
            width: 180
            height: 50
            color: "#eb34c0"
            anchors.bottom: vertical_4.bottom
            anchors.right: vertical_4.right
        }

    }

}

