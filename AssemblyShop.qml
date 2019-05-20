import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Item {
    width: 563
    height: 1000

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
        text: "Сборочный цех"
        font.family: robotoReg.name
        font.pixelSize: 40
        color:"white"
    }

    Text {
        id: headerLower
        x: parent.width/2 - width/2
        y: parent.height/10.5
        text: "общей сборки"
        font.family: roboto.name
        font.pixelSize: 22
        color:"white"
    }

    /*ColumnLayout{
        x:parent.width*0.0763
        y:parent.height*0.2

        ButtonGroup{
            id: childGroup
            exclusive: false
            checkState: parentBox.checkState
        }
        CheckBox{
            id: parentBox
            checkState: childGroup.checkState
            text: "Конвейер"
            font.family: roboto.name
        }
        CheckBox {
            //checked: true
            text: "Child 1"
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
        }
        CheckBox{
            text: "Конвейер №172235"
            font.family: roboto.name
        }
        CheckBox{
            text: "Конвейер №172236"
            font.family: roboto.name
        }
        CheckBox{
            text: "Конвейер №172237"
            font.family: roboto.name
        }
        CheckBox{
            text: "Электроталь №221219"
            font.family: roboto.name
        }

    }*/

    ListView {
        x:parent.width*0.0763
        y:parent.height*0.2
        model: ["Конвейер №172235", "Конвейер №172236", "Конвейер №172237"]
        delegate: CheckDelegate {
            text: modelData
        }
    }
}
