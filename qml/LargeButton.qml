import QtQuick 2.0

Item {
    id: root
    width: parent.width * 0.09
    height: 100
    property string img: "../img/en.png"
    property string text: "Home"
    property string f: "Courier New"
    property bool clicked: false
    z: clicked ? 1 : 0
    x:0

    Rectangle {
        anchors.fill: parent
        color: "#3099a2"
        visible: clicked
    }

    Image {
        source: root.img
        anchors.centerIn: root
        scale: root.clicked ? 0.9 : 0.7
    }
    Behavior on clicked {
        NumberAnimation {  duration: 100 }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onClicked: root.clicked = true
    }
}
