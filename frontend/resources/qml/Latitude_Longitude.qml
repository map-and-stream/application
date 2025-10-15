import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
id: latitude_longitude
    property string _text: ""
    RowLayout {

        anchors.centerIn: parent
         // anchors.verticalCenter: parent.verticalCenter
        // spacing: 60
        // anchors.margins: 5
         // property string _text: ""
        Text {
            Layout.fillHeight: true
            Layout.fillWidth: true

            text: _text
            font.pixelSize: 14
            color: "#ffffff"

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Kalameh"
        }

    }
    Rectangle{

        height: 28
        width:2
        anchors.right: parent.right
        // anchors.horizontalCenterOffset: -12

        anchors.verticalCenter: parent.verticalCenter
        // anchors.topMargin:parent.top
        // anchors.topMargin: 7
        color: "#949494"
        border.color: "#949494"
        border.width: 2
    }

}
