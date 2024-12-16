import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Task_for_Login_Page"

    Column {
        spacing: 20
        anchors.centerIn: parent

        TextField {
            id: usernameField
            width: 200
            placeholderText: "Username"
        }

        TextField {
            id: passwordField
            width: 200
            echoMode: TextInput.Password
            placeholderText: "Password"
        }

        Row {
            spacing: 10
            anchors.horizontalCenter: parent

            Button {
                id: loginButton
                text: "Log In"
                width: usernameField.width / 2 - 5
                enabled: usernameField.text.length > 0 || passwordField.text.length > 0
                opacity: enabled ? 1.0 : 0.5
                onClicked: console.log("Logging in with:", usernameField.text, passwordField.text)
            }

            Button {
                id: clearButton
                text: "Clear"
                width: usernameField.width / 2 - 5
                opacity: 0.8
                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }
        }
    }
}
