import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: appWindow
    width: 400
    height: 700
    visible: true

    property var pageColors: ["red", "yellow", "green"]

    color: pageColors[0]

    SwipeView {
        id: swipeView
        anchors.fill: parent
        clip: true

        onCurrentIndexChanged: {
            appWindow.color = pageColors[currentIndex];
        }

        Page {
            Rectangle {
                anchors.fill: parent
                color: "red"

            }
        }
        Page {
            Rectangle {
                anchors.fill: parent
                color: "yellow"

            }
        }
        Page {
            Rectangle {
                anchors.fill: parent
                color: "green"

            }
        }
    }

    PageIndicator {
        id: pageIndicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        delegate: Rectangle {
            width: 12
            height: 12
            radius: 6
            color: index === pageIndicator.currentIndex ? "black" : "lightgray"
        }
    }
}
