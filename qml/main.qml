import QtQuick 2.0
import QtQuick.Window 2.6

Window {
    visible: true
    width: 1024
    height: 600

    Rectangle {
        anchors.fill: parent
        color: "#ea000000"
    }


    Image {
        id: background
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "../img/background.jpg"
    }
    Rectangle {
        height: parent.height
        width: parent.width * 0.09
        color: "black"
    }
    Rectangle {
        height: parent.height
        width: parent.width * 0.09
        color: "#81434343"
    }
}
