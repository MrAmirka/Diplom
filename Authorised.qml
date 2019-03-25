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
        y: 945
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
        Text{
            text:"Профиль"
            font.family: "Maryweather"
            font.pointSize: 15
            x:parent.width/25
            y:parent.height/25
            color:"white"
            opacity:0.9
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
        Text{
            text:"Иван"
            x: parent.width/2-width/2
            y: parent.height/2
            font.pointSize: 20
            color:"white"
        }
        Text{
            text:"Инженер по наладке II степени"
            x: parent.width/2-width/2
            y: parent.height/1.6
            font.pointSize: 10
            color:"white"
        }

    }
    Text{
        text:"О Вас"
        x:parent.width/25
        y:parent.height/2.7
        color:"black"
        font.pointSize: 15
    }
    Text{
        text:"Возраст: 35 лет"
        x: parent.width/9
        y: parent.height/2.45
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Стаж: 7 лет 2 месяца"
        x: parent.width/9
        y: parent.height/2.25
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Дней отпуска накоплено: 33"
        x: parent.width/9
        y: parent.height/2.09
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Интересы: котики"
        x: parent.width/9
        y: parent.height/1.95
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }
    Text{
        text:"Контактная информация"
        x:parent.width/25
        y:parent.height/1.8
        color:"black"
        font.pointSize: 15
    }
    Text{
        text:"+7(909)888-22-55"
        x: parent.width/9
        y: parent.height/1.67
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }
    Text{
        text:"ivan@corporativemail.ru"
        x: parent.width/9
        y: 634
        font.pointSize: 10
        color:"black"
        opacity:0.7
    }

    Text{
        x: 23
        y: 664
        text:"Изменить пароль"
        color:"black"
        font.pointSize: 15
    }

    Text {
        x: 23
        y: 700
        color: "#000000"
        text: "О программе"
        font.pointSize: 15
    }

    Text {
        x: 63
        y: 742
        color: "#000000"
        text: "Условия использования"
        font.pointSize: 10
        opacity: 0.7
    }

    Text {
        x: 63
        y: 770
        color: "#000000"
        text: "Конфиденциальность"
        font.pointSize: 10
        opacity: 0.7
    }

    Text {
        x: 63
        y: 798
        color: "#000000"
        text: "Версия ПО"
        font.pointSize: 10
        opacity: 0.7
    }
}

