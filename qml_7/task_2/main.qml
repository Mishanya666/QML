import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Task_for_Login_Page"

    property int passwordLength: 0
    property string password: ""

    Column {
        spacing: 20
        anchors.centerIn: parent

        Text {
            text: "Enter your password:"
            font.pointSize: 14
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent
        }

        Row {
            spacing: 5
            anchors.horizontalCenter: parent

            // Звездочки для отображения пароля с динамическим цветом
            Repeater {
                model: 6
                Text {
                    text: "*" // always show "*"
                    font.pointSize: 20
                    color: index < passwordLength ? "black" : "gray"
                }
            }
        }

        Grid {
            id: numberPad
            columns: 3
            spacing: 5

            Repeater {
                model: ["1", "2", "3", "4", "5", "6", "7", "8", "9", " " , "0", "Clear"]
                Button {
                    text: modelData
                    width: 100
                    height: 50
                    font.pointSize: 12

                    onClicked: {
                        if (modelData === "Clear") {
                            password = ""
                            passwordLength = 0
                        } else if (passwordLength < 6) {
                            password += modelData
                            passwordLength++
                        }
                    }
                }
            }
        }

        Row {
            spacing: 10
            anchors.horizontalCenter: parent

            Button {
                text: "Log In"
                enabled: passwordLength > 0
                opacity: enabled ? 1.0 : 0.5
                onClicked: console.log("Entered Password:", password)
            }
        }
    }
}
