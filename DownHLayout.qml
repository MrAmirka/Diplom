import QtQuick 2.0

Item {
    width: 563
    height: 55
    //property int  horizontalSpacer: width/20
    //property int verticalSpacer: height/6

    Rectangle{
        anchors.fill: parent
        anchors.bottomMargin: 41
        opacity: 1
        gradient: Gradient{
            GradientStop{ position:1.0; color:"black"}
            GradientStop{ position:0.0; color: "white"}
        }

    }

    FontLoader
    {
        id: roboto
        source: "fonts/Roboto-Regular.ttf"
    }

    Rectangle{
        x: 0
        y: 5

        width: 563
        height: 50
        color: "white"
        visible: true
        Image {
            id: first
            x: 21
            y: 3
            source: "images/set.png"

            width: 30
            height: 30
            antialiasing: true

            MouseArea{
                id: mouseSet
                y: 2
                width: 40
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                onClicked: {mainStack.push("Settings.qml")}

                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1

                Text {
                    id: tFirst
                    x: -15
                    y: 31
                    width: 59
                    height: 12
                    text: qsTr("Параметры")
                    font.family: roboto.name
                    font.pixelSize: 12
                }
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }
        Image {
            id: second
            x: 129
            y: 3
            width: 30
            height: 30
            source: "images/way.png"


            MouseArea{
                id: mouseCourse
                y: 2
                width: 40
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                onClicked: {mainStack.push("Course.qml")}

                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1

                Text {
                    id: tSecond
                    x: -12
                    y: 31
                    text: qsTr("Маршрут")
                    font.family: roboto.name
                    font.pixelSize: 12
                }
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }
        Image {
            id: third
            x: 255
            y: 3
            width: 30
            height: 30
            source: "images/scan.png"


            MouseArea{
                id: mouseScan
                y: 2
                width: 40
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                onClicked: {mainStack.push("ScanMenu.qml")}

                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1

                Text {
                    id: tThird
                    x: -20
                    y: 31
                    width: 59
                    height: 12
                    text: qsTr("Сканировать")
                    font.family: roboto.name
                    font.pixelSize: 12
                }
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }

        }
        Image {
            id: fourth
            x: 390
            y: 3
            width: 30
            height: 30
            source: "images/doc.png"

            MouseArea{
                id: mouseDoc
                y: 2
                width: 40
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                onClicked: {mainStack.push("Documents.qml")}

                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1

                Text {
                    id: tFourth
                    x: -14
                    y: 29
                    width: 59
                    height: 12
                    text: qsTr("Документы")
                    font.family: roboto.name
                    font.pixelSize: 12
                }
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }

        }
        Image {
            id: fifth
            x: 523
            y: 0
            width: 40
            height: 40
            source: "images/profile.png"

            MouseArea{
                id: mouseProf
                y: 2
                width: 40
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                onClicked: {mainStack.push("Authorised.qml")}

                onPressed: parent.scale = 0.9
                onReleased: parent.scale = 1

                Text {
                    id: tFifth
                    x: -23
                    y: 31
                    width: 59
                    height: 12
                    text: qsTr("Профиль")
                    font.family: roboto.name
                    font.pixelSize: 12
                }
            }
            Behavior on scale {
                PropertyAnimation{
                    duration: 100
                }
            }
        }
    }
}
