import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {
    height: propHeight
    width:propWidth

    Rectangle{
        id: rectangle
        anchors.fill: parent
        color: "white"

        Rectangle{
            x: parent.width/2 - width/2
            y: parent.height * 0.6
            width: 300
            height: 300
            radius: height * 0.5
            color: "#FF5F00"

            Text {
                id: textFirst
                x: 70
                y: 120
                text: "Начать"
                font.pixelSize: 50
                font.family: roboto.name
                color:"white"
            }

            MouseArea{
                id:mouseArea
                anchors.fill:parent
                onPressed: {parent.scale = 0.9;
                    animation.pause()}
                onReleased: {parent.scale = 1;
                }

                onClicked: {mainStack.push("GamingSwipeMenu.qml");
                    mouseArea.destroy()}

            }
            Behavior on scale{
                PropertyAnimation{
                    duration:100
                }
            }

            SequentialAnimation on scale{
                id:animation
                running: true
                NumberAnimation { from:1; to: 1.1; duration: 250 }
                NumberAnimation { from:1.1; to: 1; duration: 500 }
                NumberAnimation { from:1; to: 1.1; duration: 250 }
                NumberAnimation { from:1.1; to: 1; duration: 500 }
                NumberAnimation { from:1; to: 1; duration: 375 }
                loops:Animation.Infinite
            }
        }
    }

    Text {
        id: element1
        x: parent.width/2-width/2
        y: parent.height*0.922
        text: "Поднесите устройство к NFC метке"
        font.family: robotoReg.name
        font.styleName: Font.Light
        font.pixelSize: 25
        opacity: 0.5
    }
    Text {
        id: element2
        x: parent.width/2-width/2
        y: parent.height*0.95
        text: "Дата последнего сканирования: 24.03.2019"
        font.family: roboto.name
        font.pixelSize: 20
        opacity: 0.5
    }
}

