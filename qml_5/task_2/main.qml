import QtQuick 2.15
import QtQuick.Layouts 1.15

Window {
    visible: true
    width: 400
    height: 600
    title: "Task_for_Layout"

    Item {
        id: root
        anchors.fill: parent

        ColumnLayout {
            anchors.fill: parent

            Header {
                id: qwe
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                onBackPressed: {
                    root.state = "state1";
                }
            }

            Content {
                id: rty
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            Footer {
                id: footer
                Layout.fillWidth: true
                Layout.preferredHeight: 50

                onButtonClicked: function(buttonIndex) {
                    root.state = "state" + buttonIndex;
                    footer.buttonIndex = buttonIndex;
                }
            }
        }

        states: [
            State {
                name: "state1"
                PropertyChanges { target: qwe; headerText: "Header" }
                PropertyChanges { target: rty; contentText: "Content" }
                PropertyChanges { target: footer; buttonIndex: 0 }
            },
            State {
                name: "state2"
                PropertyChanges { target: qwe; headerText: "\u25C0 Back | Button 2 Pressed" }
                PropertyChanges { target: rty; contentText: "You clicked on Button 2!" }
                PropertyChanges { target: footer; buttonIndex: 2 }
            },
            State {
                name: "state3"
                PropertyChanges { target: qwe; headerText: "\u25C0 Back | Button 3 Pressed" }
                PropertyChanges { target: rty; contentText: "You clicked on Button 3!" }
                PropertyChanges { target: footer; buttonIndex: 3 }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                NumberAnimation { properties: "opacity"; duration: 300 }
            }
        ]
    }
}
