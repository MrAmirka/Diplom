import QtQuick 2.0

Item {

    width: propWidth
    height: propHeight
    Image{
        anchors.fill: parent
        source: "images/idler.png"
        //fillMode: Image.PreserveAspectCrop


    }

    Image {
        id: back
        source: "images/getback.png"
        MouseArea{
            id: mouseProf
            x: parent.width*0.15
            y: parent.height*0.1
            width: 40
            height:40
            anchors.fill: parent

            onClicked: {mainStack.pop("Documents.qml")}

            onPressed: parent.scale = 0.9
            onReleased: parent.scale = 1


        }
        Behavior on scale {
            PropertyAnimation{
                duration: 100
            }
        }
    }
}
