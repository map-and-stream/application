import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Item {
    id: root_1
    // width: 800
    // height: 80
    property string _icon: ""
    property string _text: ""


    RowLayout {
        // anchors.margins: 10
        anchors.centerIn: parent

        // spacing: 6
        // anchors.margins: 5

        Image {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: _icon
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


    }
}
