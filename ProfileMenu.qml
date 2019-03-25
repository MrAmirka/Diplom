import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    width: 563
    height: 1000
    //anchors.fill: parent

    Image{
        id:background
        source: "images/3131068.jpg"
        x:-200
        height:parent.height

    }
    Text {                              //Заголовок
        id: title
        text: qsTr("Авторизуйтесь")
        color: "white"
        font.family: "Helvetica Thin"
        font.pointSize: 40
        opacity:0.9
        x:parent.width/2-width/2
        y:10
    }
    Text{
        x: 246
        y: 457                               //Текст перед 1-м полем ввода
        text:"Вход"
        font.family: "Helvetica CE"
        font.pointSize: 20
        color:"white"
        opacity:0.9
    }
    Rectangle                           //Поле ввода логина
    {
        width: parent.width/2;
        height: 30;
        border.color: "grey";
        border.width: 1;
        radius: 15
        x:parent.width/2-width/2
        y:parent.height/2
        clip: true
        opacity: 0.85
        TextInput {
            id: textLogin;
            anchors.fill: parent;
            anchors.margins: 8;
            wrapMode: TextInput.WrapAnywhere;

            text: focus ? "" : "  Login";
            font.family: "Helvetica"
            opacity: 0.85
        }
    }
    Rectangle                           //Поле ввода пароля
    {
        width: parent.width/2;
        height: 30;
        border.color: "grey";
        border.width: 1;
        radius: 15
        x:parent.width/2-width/2
        y:parent.height/2+height*1.5
        clip: true
        opacity: 0.85
        TextInput {
            id: textPassword;
            anchors.fill: parent;
            anchors.margins: 8;
            wrapMode: TextInput.WrapAnywhere;

            text: focus ? "" : "  Password";
            font.family: "Helvetica"
            opacity: 0.85
        }
    }
    Rectangle                           //Кнопка войти
    {
        id: enterButton
        width: parent.width/2;
        height: 50;
        border.color: "grey";
        border.width: 1;
        radius: 15
        x:parent.width/2-width/2
        y:parent.height/2+100
        clip: true
        opacity: 0.85
        MouseArea {
            anchors.fill: parent;
            anchors.margins: 8;
            onPressed: parent.scale = 0.9
            onReleased: parent.scale = 1
            onClicked:{mainStack.push("Authorised.qml")}

        }
        Behavior on scale {
            PropertyAnimation{
                duration: 100
            }

        }
        Text{
            text:"ВОЙТИ"
            font.family: "Helvetica"
            font.pointSize: 20
            x:parent.width/2-width/2
            y:parent.height/2-height/2
        }
    }

}

