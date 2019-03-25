import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    width: 563
    height: 1000

    Rectangle{
        anchors.fill:parent
        color: "white"
        DownHLayout{
            id: downHLayout
            x: 0
            y: 945
            height: parent.height/12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -28
            width:parent.width
        }

        Rectangle{//Shadow
            height:150
            width:300
            x: 43
            y: 271
            radius: 0.12*height
            gradient: Gradient{
                GradientStop{ position:0.0; color:"black"}
                GradientStop{ position:1.1; color: "white"}
            }
        }

        Image{//Сборочный
            height: 150
            width: 300
            id:sb
            x: 43
            y: 267
            source: "images/sb.png"
            antialiasing: true
            visible: false
        }

        Rectangle{
            id: rectangleMask
            anchors.fill: sb
            radius: 0.12*height
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            visible: false
        }

        OpacityMask{
            id: opacityMask
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: sb
            source: sb
            maskSource: rectangleMask
        }

        Rectangle{
            id:upperRound
            x: -454
            y: -1286
            height:1500
            width:1500
            radius:0.5*height
            color: "#FF5F00"

            Text {
                id: header
                x: 649
                y: 1360
                text: qsTr("Маршрут")
                font.pixelSize: 40
                color:"white"
            }
        }

        Text {
            id: elementFirst
            x: 43
            y: 229
            text: qsTr("СБОРОЧНЫЙ ЦЕХ")
            font.pixelSize: 20
            opacity: 0.7
        }

        Text {
            id: elementSecond
            x: 43
            y: 433
            text: qsTr("СБОРОЧНЫЙ ЦЕХ")
            font.pixelSize: 20
            opacity: 0.7
        }


    }
}
