import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: controlButton
    width: 120
    height: 40
    text: "Start"

    signal buttonClicked()

    onClicked: buttonClicked()
}
