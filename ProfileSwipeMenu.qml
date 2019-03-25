import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    SwipeView{
        anchors.fill:parent
        id:profileSwipe
    }
    
    PageIndicator {
        id: indicator


        count: gamingMenu.count
        currentIndex: mainMenu.currentIndex

        anchors.bottom: gamingMenu.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
