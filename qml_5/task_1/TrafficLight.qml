import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: trafficLight
    width: 300
    height: 700
    color: "#E0E0E0"
    border.color: "#BDBDBD"
    border.width: 2
    radius: 20

    property int stateIndex: 0
    property var states: [
        { red: "red", yellow: "black", green: "black" },
        { red: "black", yellow: "yellow", green: "black" },
        { red: "black", yellow: "black", green: "green" }
    ]
    property bool isRunning: false

    function updateLights() {
        lightRed.color = states[stateIndex].red;
        lightYellow.color = states[stateIndex].yellow;
        lightGreen.color = states[stateIndex].green;
    }

    Timer {
        id: switchTimer
        interval: 500
        running: false
        repeat: true
        onTriggered: {
            trafficLight.stateIndex = (trafficLight.stateIndex + 1) % trafficLight.states.length;
            trafficLight.updateLights();
        }
    }

    function start() {
        switchTimer.start();
        trafficLight.isRunning = true;
    }

    function stop() {
        switchTimer.stop();
        trafficLight.isRunning = false;
    }

    ColumnLayout {
        id: lightsContainer
        anchors.centerIn: parent
        spacing: 24

        // Red light
        Rectangle {
            id: lightRed
            width: 120
            height: 120
            radius: 60
            Layout.alignment: Qt.AlignHCenter
            gradient: Gradient {
                GradientStop { position: 0.0; color: lightRed.color }
                GradientStop { position: 1.0; color: "darkred" }
            }
            border.color: "#880000"
            border.width: 3
        }

        // Yellow light
        Rectangle {
            id: lightYellow
            width: 120
            height: 120
            radius: 60
            Layout.alignment: Qt.AlignHCenter
            gradient: Gradient {
                GradientStop { position: 0.0; color: lightYellow.color }
                GradientStop { position: 1.0; color: "darkorange" }
            }
            border.color: "#886600"
            border.width: 3
        }

        // Green light
        Rectangle {
            id: lightGreen
            width: 120
            height: 120
            radius: 60
            Layout.alignment: Qt.AlignHCenter
            gradient: Gradient {
                GradientStop { position: 0.0; color: lightGreen.color }
                GradientStop { position: 1.0; color: "darkgreen" }
            }
            border.color: "#008800"
            border.width: 3
        }
    }

    MouseArea {
        anchors.fill: lightsContainer
        onClicked: {
            trafficLight.stateIndex = (trafficLight.stateIndex + 1) % trafficLight.states.length;
            trafficLight.updateLights();
        }
    }
}
