import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: footer
    signal newMessage(string msg)

    height: 70
    width: parent.width
    color: "#F9F9F9"
    border.color: "#BDBDBD"
    radius: 10

    RowLayout {
        anchors.fill: parent
        spacing: 10

        Rectangle {
            width: 10
            height: parent.height
            color: "transparent"
        }
        TextField {
            id: edtText
            Layout.fillWidth: true
            placeholderText: "Write your message..."
            font.pointSize: 14
            color: "#212121"
            background: Rectangle {
                color: "white"
                radius: 5
                border.color: "#BDBDBD"
            }
        }

        Button {
            id: btnAddItem
            text: "Send"
            background: Rectangle {
                color: edtText.text.trim() === "" ? "#BDBDBD" : "#6200EE"
                radius: 5
            }
            onClicked: {
                if (edtText.text.trim() !== "") {
                    footer.newMessage(edtText.text); // Генерация сигнала
                    edtText.clear();
                }
            }
        }
        Rectangle {
            width: 10
            height: parent.height
            color: "transparent"
        }
    }
}
