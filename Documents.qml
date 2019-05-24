import QtQuick 2.0

Item {
    height: propHeight
    width:propWidth

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

        Rectangle{
            id:upperRound
            x: -454
            y: -1286
            height:parent.height*1.5
            width:parent.width*2.66
            radius:0.5*height
            color: "#FF5F00"
        }

        Text {
            id: header
            x: parent.width/2 - width/2
            y: parent.height/11
            text: "Документы"
            font.family: roboto.name
            font.pixelSize: 40
            color:"white"
        }

        Text {
            id: elementFirst
            x: parent.width*0.0763
            y: parent.height*0.25
            text: qsTr("Методические указания к проверке
конвейерного механизма")
            font.family: roboto.name
            font.pixelSize: 20
            opacity: 0.7

            MouseArea {
                anchors.fill: parent;
                anchors.margins: 8;
                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1
                onClicked: mainStack.push("Doc.qml")
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }

        Text {
            id: elementSecond
            x: parent.width*0.0763
            y: parent.height*0.32
            text: qsTr("Акт проверки
конвейерного механизма")
            font.family: roboto.name
            font.pixelSize: 20
            opacity: 0.7
        }

        Text {
            id: elementThird
            x: parent.width*0.0763
            y: parent.height*0.39
            text: qsTr("Журнал технического состояния
на сложное оборудование")
            font.family: roboto.name
            font.pixelSize: 20
            opacity: 0.7
        }

        Text {
            id: elementFourth
            x: parent.width*0.0763
            y: parent.height*0.46
            text: qsTr("Журнал дефектов
и неполадок")
            font.family: roboto.name
            font.pixelSize: 20
            opacity: 0.7
        }
    }
}
