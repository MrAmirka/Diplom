import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Item {
    height: propHeight
    width:propWidth

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
        height: parent.height/7
        color: "#FF5F00"
    }

    Text {
        id: header
        x: parent.width/2 - width/2
        y: parent.height/19
        text: "Цех общей сборки"
        font.family: robotoReg.name
        font.pixelSize: 40
        color:"white"
    }

//    Text {
//        id: headerLower
//        x: parent.width/2 - width/2
//        y: parent.height/10.5
//        text: "общей сборки"
//        font.family: roboto.name
//        font.pixelSize: 22
//        color:"white"
//    }

    ColumnLayout{
        x:parent.width*0.0763
        y:parent.height*0.2

        ButtonGroup{
            id: childGroup
            exclusive: false
            checkState: parentBox.checkState
        }
        ButtonGroup{
            id: childGroup2
            exclusive: false
            checkState: parentBox2.checkState
        }
        ButtonGroup{
            id: childGroup3
            exclusive: false
            checkState: parentBox3.checkState
        }
        ButtonGroup{
            id: childGroup4
            exclusive: false
            checkState: parentBox4.checkState
        }
        ButtonGroup{
            id: childGroup5
            exclusive: false
            checkState: parentBox5.checkState
        }
        CheckBox{
            id: parentBox
            checkState: childGroup.checkState
            text: "Конвейер №131255"
            font.family: robotoReg.name
        }
        CheckBox {
            //checked: true
            text: "Вскрытие крышек"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }

        CheckBox {
            //checked: true
            text: "Промывка узлов"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }

        CheckBox {
            //checked: true
            text: "Промывка деталей разобранных узлов"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }

        CheckBox {
            //checked: true
            text: "Зачистка подшипников"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }
        CheckBox {
            //checked: true
            text: "Сборка шпинделя"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }

        CheckBox {
            //checked: true
            text: "Регулировка подшипников"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
            font.family: roboto.name
        }
        CheckBox{
            id: parentBox2
            text: "Конвейер №172235"
            checkState: childGroup2.checkState
            font.family: robotoReg.name
        }
        CheckBox {
            //checked: true
            text: "Протирка станка"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup2
            font.family: roboto.name
        }
        CheckBox{
            id:parentBox3
            text: "Конвейер №172236"
            checkState: childGroup3.checkState
            font.family: robotoReg.name
        }
        CheckBox {
            //checked: true
            text: "Протирка станка"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup3
            font.family: roboto.name
        }
        CheckBox{
            id: parentBox4
            text: "Конвейер №172237"
            checkState: childGroup4.checkState
            font.family: robotoReg.name
        }
        CheckBox {
            //checked: true
            text: "Протирка станка"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup4
            font.family: roboto.name
        }
        CheckBox{
            id: parentBox5
            text: "Электроталь №221219"
            checkState: childGroup5.checkState
            font.family: robotoReg.name
        }
        CheckBox {
            //checked: true
            text: "Замена изношенных и сломанных
наружных крепежных деталей"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup5
            font.family: roboto.name
        }
        CheckBox {
            //checked: true
            text: "Пришабривание подшипников"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup5
            font.family: roboto.name
        }
    }

    /*ListView {
        x:parent.width*0.0763
        y:parent.height*0.2
        model: ["Конвейер №172235", "Конвейер №172236", "Конвейер №172237"]
        delegate: CheckDelegate {
            text: modelData
        }
    }*/
}
