import QtQuick 2.14
// import Table
import QtQuick.Window 2.14

Window {
    id: window
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Table"
    visibility: Window.Windowed
    // visibility: Window.FullScreen
    Screen01 {
        id: mainScreen
        anchors.fill: parent
    }

}

