import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    height: propHeight
    width:propWidth

    Rectangle{
        anchors.fill:parent
        color: "white"

        DownHLayout{
            id: downHLayout
            x: 0
            y: parent.height*0.945
            height: parent.height/12
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -28
            width:parent.width
        }

        Image{//Сборочный
            height:parent.height*0.15
            width:parent.width*0.532
            id:sb
            x: parent.width*0.076
            y: parent.height*0.267
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

            MouseArea {
                anchors.fill: parent;
                anchors.margins: 8;
                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1
                onClicked:{mainStack.push("AssemblyShop.qml")
                    sb.opacity = 0.5}

            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }

        Rectangle{
            id:upperRound
            x: -454
            y: -1286
            height:1500
            width:1500
            radius:0.5*height
            color: "#FF5F00"


        }

        Text {
            id: header
            x: parent.width/2 - width/2
            y: parent.height/11
            text: "Индивидуальный маршрут"
            font.family: roboto.name
            font.pixelSize: 40
            color:"white"
        }

        Text {
            id: headerLower
            x: parent.width/2 - width/2
            y: parent.height/7.5
            text: "на 08.06.2019"
            font.family: roboto.name
            font.pixelSize: 22
            color:"white"
        }

        Text {
            id: elementFirst
            x: parent.width*0.0763
            y: parent.height*0.229
            text: "ЦЕХ ОБЩЕЙ СБОРКИ"
            font.family: robotoReg.name
            font.pixelSize: 20
            opacity: 0.7
        }

        Text {
            id: elementSecond
            x: parent.width*0.0763
            y: parent.height*0.433
            text: "СВАРОЧНЫЙ ЦЕХ"
            font.family: robotoReg.name
            font.pixelSize: 20
            opacity: 0.7
        }

        Image{//Окрасочный
            height:parent.height*0.15
            width:parent.width*0.532
            id: okr
            x: parent.width*0.0763
            y: parent.height*0.480
            source: "images/okr.jpg"
            antialiasing: true
            visible: false
        }

        Rectangle{
            id: rectangleMask2
            anchors.fill: okr
            radius: 0.12*height
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            visible: false
        }

        OpacityMask{
            id: opacityMask2
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: okr
            source: okr
            maskSource: rectangleMask

            MouseArea {
                anchors.fill: parent;
                anchors.margins: 8;
                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1
                //onClicked:{mainStack.push("Authorised.qml")}

            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }


    }
}
