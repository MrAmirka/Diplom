import QtQuick 2.0

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
                text: qsTr("Документы")
                font.pixelSize: 40
                color:"white"
            }
        }

        Text {
            id: elementFirst
            x: 43
            y: 229
            text: qsTr("Документ")
            font.pixelSize: 20
            opacity: 0.7
        }


    }
}
