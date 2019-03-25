import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 563
    height: 1000
    title: qsTr("Diploma")
    property double rowHeight: (height*10)/100
    //property double columnWidth: (width*10)/100

    DownHLayout{
        id: downHLayout
        x: 0
        y: 945
        height: parent.height/12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -28
        width:parent.width
    }

    StackView{
        id:mainStack
        anchors.bottomMargin: 89
        anchors.fill: parent

    ProfileMenu{
        id:profileMenu
    }
    }
}




