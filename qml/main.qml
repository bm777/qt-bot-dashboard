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
    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////

    property bool st_home: {
        if(home.clicked) {
//            home.clicked = false
            camera.clicked = false
            sensor.clicked = false
            setting.clicked = false
            return true
        } else return false
    }
    property bool st_camera: {
        if(camera.clicked) {
            home.clicked = false
//            camera.clicked = false
            sensor.clicked = false
            setting.clicked = false
            return true
        } else return false
    }
    property bool st_sensor: {
        if(sensor.clicked) {
            home.clicked = false
            camera.clicked = false
//            sensor.clicked = false
            setting.clicked = false
            return true
        } else return false
    }
    property bool st_setting: {
        if(setting.clicked) {
            home.clicked = false
            camera.clicked = false
            sensor.clicked = false
//            setting.clicked = false
            return true
        } else return false
    }


    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////

    LargeButton {
        id: home
        width: parent.width * 0.09
        height: width * 0.8
        img: "../img/home.png"
        y: 0
    }
    LargeButton {
        id: camera
        width: parent.width * 0.09
        height: width * 0.8
        img: "../img/camera.png"
        y: home.y + home.height
    }
    LargeButton {
        id: sensor
        width: parent.width * 0.09
        height: width * 0.8
        img: "../img/sensor.png"
        y: camera.y + camera.height
    }
    LargeButton {
        id: setting
        width: parent.width * 0.09
        height: width * 0.8
        img: "../img/setting.png"
        y: sensor.y + sensor.height
    }

    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////






    Rectangle {
        height: parent.height
        width: parent.width * 0.09
        color: "#81434343"
    }
}
