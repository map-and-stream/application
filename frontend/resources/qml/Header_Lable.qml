import QtQuick 2.0
import QtQuick.Controls 2.0



Label {

      id: header_lable
     property int pipe_height: 41
    property bool hideRec: true
      property int pipe_margin: 0
    // id: label_Funcations
    // anchors.fill: parent
    color: "#ffffff"
    // text: _name
    font.pixelSize: 14
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    font.weight: Font.Bold
    font.family: "Kalameh"
    Rectangle{
        visible: hideRec
        height: pipe_height
        width:2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: pipe_margin
        color: "#949494"
        border.color: "#949494"
        border.width: 2
        // border.width: 20

    }
}
