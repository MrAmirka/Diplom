import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    title: qsTr("Diploma")
    property int propWidth: 563
    property int propHeight: 1000
    width: propWidth
    height: propHeight

    FontLoader
    {
        id: roboto
        source: "fonts/Roboto-Light.ttf"
    }
    FontLoader
    {
        id: robotoReg
        source: "fonts/Roboto-Regular.ttf"
    }



    StackView{
        id:mainStack
        initialItem: profileMenu
        anchors.bottomMargin: 89
        anchors.fill: parent

        ProfileMenu{
            id:profileMenu
        }
    }
}




