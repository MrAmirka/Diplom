import QtQuick 2.0
import QtQuick.Controls 2.1

Item {
    width: 563
    height: 1000
    //anchors.fill:parent
    Rectangle{
        anchors.fill: parent
        color:"white"
    }

    DownHLayout{
        id: downHLayoutAuth
        x: 0
        y: parent.height*0.945
        height: parent.height/12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -28
        width:parent.width
    }

    Rectangle{
        //opacity: 0.8
        width:parent.width
        height: parent.height/2.75
        color: "#FF5F00"

        Text
        {
            text: "Профиль"
            font.family: roboto.name
            font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold
            x:parent.width/25
            y:parent.height/25
            color: "white"
            font.pointSize: 15
        }
        Rectangle {
            id:rect
            x: parent.width/2-width/2
            y: parent.height/4
            height: 70
            width: 70
            radius: 50
            Image {
                anchors.fill: parent
                source: "images/Котик.png"
            }
        }

        Text
        {
            text: "Иван"
            font.family: robotoReg.name
            font.weight: Font.Light
            x: parent.width/2-width/2
            y: parent.height/2
            color: "white"
            font.pointSize: 20
        }
        Text{
            text:"Инженер по наладке II степени"
            font.family: roboto.name
            font.weight: Font.Light
            x: parent.width/2-width/2
            y: parent.height/1.6
            font.pointSize: 12
            color:"white"
        }

    }
    Text{
        text:"О Вас"
        font.family: robotoReg.name
        font.weight: Font.Light
        x:parent.width/25
        y:parent.height/2.7
        color:"black"
        font.pointSize: 15
    }
    Text{
        text:"Возраст: 35 лет"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height/2.45
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Стаж: 7 лет 2 месяца"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height/2.25
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Дней отпуска накоплено: 33"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height/2.09
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Интересы: котики"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height/1.95
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Контактная информация"
        font.family: robotoReg.name
        font.weight: Font.Light
        x:parent.width/25
        y:parent.height/1.8
        color:"black"
        font.pointSize: 15
    }
    Text{
        text:"+7(909)888-22-55"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height/1.67
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }
    Text{
        text:"ivan@corporativemail.ru"
        font.family: roboto.name
        font.weight: Font.Light
        x: parent.width/9
        y: parent.height*0.634
        font.pointSize: 12
        color:"black"
        opacity:0.7
    }

    Text{
        x: parent.width*0.04
        y: parent.height*0.664
        text:"Изменить пароль"
        font.family: robotoReg.name
        font.weight: Font.Light
        color:"black"
        font.pointSize: 15

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

    Text {
        x: parent.width*0.04
        y: parent.height*0.7
        color: "#000000"
        text: "О программе"
        font.family: robotoReg.name
        font.weight: Font.Light
        font.pointSize: 15
    }

    Text {
        x: parent.width*0.1119
        y: parent.height*0.742
        color: "#000000"
        text: "Условия использования"
        font.family: roboto.name
        font.weight: Font.Light
        font.pointSize: 12
        opacity: 0.7

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

    Text {
        x: parent.width*0.1119
        y: parent.height*0.77
        color: "#000000"
        text: "Конфиденциальность"
        font.family: roboto.name
        font.weight: Font.Light
        font.pointSize: 12
        opacity: 0.7

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

    Text {
        x: parent.width*0.1119
        y: parent.height*0.798
        color: "#000000"
        text: "Версия ПО"
        font.family: roboto.name
        font.weight: Font.Light
        font.pointSize: 12
        opacity: 0.7

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

