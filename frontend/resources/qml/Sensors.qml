import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
// import QtQuick.Studio.Components

Item {
    id: snsors
    property string _icon1: ""
    property string _icon2: ""
    property string _icon3: ""
    property string _icon4: ""

    RowLayout {

         anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: Math.max(5, (parent.width - (4*50)) / 2)

        Image {

            Layout.fillHeight: true
            Layout.fillWidth: true

            source: _icon1
            fillMode: Image.PreserveAspectFit
            // clip: true

        }
        Image {
            Layout.fillHeight: true
            Layout.fillWidth: true

            source: _icon2
            fillMode: Image.PreserveAspectFit
            // clip: true

        }
        Image {
            Layout.fillHeight: true
            Layout.fillWidth: true

            source: _icon3
            fillMode: Image.PreserveAspectFit
            // clip: true

        }
        Image {

            Layout.fillHeight: true
            Layout.fillWidth: true

            source: _icon4
            fillMode: Image.PreserveAspectFit
            // clip: true

        }


    }
    Rectangle{
        height: 28
        width:2
        anchors.right: parent.right

        anchors.verticalCenter: parent.verticalCenter
        // anchors.topMargin: parent.top
        // anchors.topMargin:7
        color: "#949494"
        border.color: "#949494"
        border.width: 2
    }
}
