import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 400
    height: 800
    visible: true
    title: qsTr("Traffic Lights")

    TrafficLight {
        id: trafficLight
        anchors.centerIn: parent
    }

    TrafficLightButton {
        id: controlButton
        text: trafficLight.isRunning ? "Stop" : "Start"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        onButtonClicked: {
            if (trafficLight.isRunning) {
                trafficLight.stop();
            } else {
                trafficLight.start();
            }
            controlButton.text = trafficLight.isRunning ? "Stop" : "Start";
        }
    }
}
