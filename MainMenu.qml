import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Controls 1.3

Item {
    width: 569
    height: 1000
    anchors.fill:parent
    Image {
        id: background
        source: "images/cropped-кузнец.jpg"
        height:parent.height
        width:parent.width*2
        x:-100
    }


}

