import QtQuick 2.0
import QtQuick.Controls 2.0


Rectangle {
    id: borderSide


    enum Position { Top, Right, Bottom, Left }


    property int side: Position.Top
    property color borderColor: "black"
    property int borderWidth: 2

    color: borderColor

    // anchors {
    //     top:    side === Position.Top    ? parent.top    : undefined
    //     right:  side === Position.Right  ? parent.right  : undefined
    //     bottom: side === Position.Bottom ? parent.bottom : undefined
    //     left:   side === Position.Left   ? parent.left   : undefined
    // }


    // width:  (side === Position.Left || side === Position.Right)  ? borderWidth : (parent ? parent.width : 0)
    // height: (side === Position.Top  || side === Position.Bottom) ? borderWidth : (parent ? parent.height : 0)
}
