import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    // width: 800
    // height: 80

    property string _icon1: ""
    property string _icon2: ""
    property string _text: ""

    RowLayout {

        anchors.centerIn: parent
        // spacing: 20
        // anchors.margins: 50
        // anchors.fill: parent
        // anchors.centerIn: parent

        // anchors.centerIn: parent
        Image {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: _icon1
            // Layout.leftMargin: 35
            fillMode: Image.PreserveAspectFit

        }

        Text {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: _text
            color: "turquoise"
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Image {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: _icon2
            Layout.rightMargin: 31
            fillMode: Image.PreserveAspectFit

        }


    }
    Rectangle{
        height: 28
        width:2
        anchors.right: parent.right

        // anchors.horizontalCenterOffset: -12

        anchors.verticalCenter: parent.verticalCenter
        // anchors.topMargin: parent.top
        // anchors.topMargin:7
        color: "#949494"
        border.color: "#949494"
        border.width: 2
    }

}
