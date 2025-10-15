
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.14
import QtQuick.Controls 2.14
// import Table
// import QtNetwork
// import QtProtobuf
// import QtQuick.Controls.FluentWinUI3
// import QtQuick.Effects
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0
import QtQml.Models 2.1
import MyApp 1.0

ApplicationWindow {
    id:app_main
    visible: true

     width: Screen.width
     height: 600

Rectangle {

    id: rectangle
    // width: 1440
    //  height: 960

    // scale: Qt.application.active ? 1 : Math.min(parent.width / 1440,parent.height / 960)
    anchors.fill: parent
    // color: Constants.backgroundColor
    TableModel {
        id: tableModel
    }

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/Images/Background.png"
        fillMode: Image.Stretch

    }

    Rectangle {
        clip: true
        id: rectangle_TrackList
        anchors.fill: parent
        anchors.margins: 40
        anchors.topMargin: 160
        anchors.bottomMargin: 50
        // id: rectangle_TrackList
        // x: 40
        // y: 170

        color: "#292929"
        radius: 24
        border.width: 0

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 40
        anchors.rightMargin: 40
        RowLayout {
            id: rowLayout_
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.margins: 30

            Label {
                id: label_trakingList

                text: qsTr("Traking List")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold"
                font.family: "Kalameh"
                color: "#2FCDAA"
            }
            Rectangle
            {

                id:rectangle_search
                color: "#00ffffff"
                Layout.preferredWidth: 500
                Layout.preferredHeight: 41
                Layout.alignment: Qt.AlignRight
            RowLayout {
                id: rowLayout_search
                anchors.fill: parent
                // uniformCellSizes: false
                anchors.centerIn: parent
                spacing: 20
                // anchors.left: parent.left


                Button {
                    id: button_filter_edit

                    Layout.minimumWidth: 40
                    Layout.maximumWidth: 40
                    Layout.minimumHeight: 40
                    Layout.maximumHeight: 40
                    background: Rectangle {
                        color: "#3E3E3E"
                        radius: 50
                        clip: true

                    }
                    Image {
                         anchors.centerIn: parent
                        source: "qrc:/icons/filter-edit.svg"
                        fillMode: Image.PreserveAspectFit
                    }


                        onClicked: {
                            // if (tableView.currentRow >= 0)
                                tableModel.removeItem(tableView.currentRow)
                            }

                }
                Button {
                    id: button_arrow_swap
                    Layout.minimumWidth: 40
                    Layout.maximumWidth: 40
                    Layout.minimumHeight: 40
                    Layout.maximumHeight: 40
                    background: Rectangle {
                        color: "#3E3E3E"
                        radius: 50
                        clip: true
                    }
                    Image {
                        anchors.centerIn: parent
                        source: "qrc:/icons/arrow-swap.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Button {
                    id: button_rotate_left
                    Layout.minimumWidth: 40
                    Layout.maximumWidth: 40
                    Layout.minimumHeight: 40
                    Layout.maximumHeight: 40
                    background: Rectangle {
                        color: "#3E3E3E"
                        radius: 50
                        clip: true
                    }
                    Image {
                      anchors.centerIn: parent
                        source: "qrc:/icons/rotate-left.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    // Connections {
                    //     target: button
                    //     onClicked: console.log("Search for:")
                    //      TableModel.addItem("999999", "New Priority")
                    // }
                    onClicked: {
                        tableModel.addItem("999999", "New Priority")

                    }
                }
                Rectangle {
                        id: rectangle_search_text
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        radius: 50
                        color: "#3E3E3E"

                        RowLayout {
                            anchors.fill: parent
                            anchors.margins: 8
                            spacing: 8


                            TextField {
                                id: searchField
                                // anchors.verticalCenter: parent.verticalCenter
                                Layout.fillWidth: true
                                placeholderText: "Search ID, Priority..."
                                background: null
                                color: "#FFFFFF"
                                font.pixelSize: 14
                                placeholderTextColor: "#ffffff"
                                font.styleName: "Light"
                                font.family: "Kalameh"

                            }


                            Button {
                                id: searchBtn
                                // anchors.verticalCenter: parent.verticalCenter
                                Layout.fillWidth: true
                                width: 18
                                height:18
                                background: Rectangle {
                                    color: "transparent"
                                    radius: 15
                                }
                              Image {

                                    anchors.centerIn: parent
                                    source: "qrc:/icons/search-normal.svg"
                                      fillMode: Image.PreserveAspectFit
                                }

                                // onClicked: console.log("Search for:", searchField.text)

                            }
                        }
                    }




            }
            }
        }


        Rectangle {
            id: rectangle_table
            color: "#292929"
            radius: 12
            border.width: 1
            anchors.fill: parent

            anchors.topMargin: 90
            border.color: "#292929"


            // ListModel {
            //     id: tableModel
            //     ListElement {
            //         objectId: "1541989"
            //         priorityIcon1: "/home/internetgis/SN/Table/icons/people.svg"
            //         priorityText: "3 Times Detect by"
            //         priorityIcon2: "/home/internetgis/SN/Table/icons/radar.svg"
            //         latlong: "36.325, 65.254"

            //         latlong_Icon1:"/home/internetgis/SN/Table/icons/video.svg"
            //         latlong_Icon2:"/home/internetgis/SN/Table/icons/microphone-2.svg"
            //         latlong_Icon3:"/home/internetgis/SN/Table/icons/lamp-on.svg"
            //         latlong_Icon4:"/home/internetgis/SN/Table/icons/radar_.svg"
            //         function_Icon:"/home/internetgis/SN/Table/icons/warning-2.svg"
            //         funcText:"Change priority"
            //     }

            // }


            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 10

                // Header
                Rectangle {

                    id: tableView_header
                    Layout.fillWidth: true
                    Layout.preferredHeight: 41
                    Layout.alignment: Qt.AlignTop
                    color: "#3e3e3e"
                    radius: 12
                    clip: true

                    RowLayout {
                        id:rowLayout_tableview
                        anchors.fill: parent
                        // uniformCellSizes: false
                        anchors.centerIn: parent


                        Header_Lable {

                            color: "#ffffff"
                            text: qsTr("Object ID")
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Layout.preferredWidth: 1

                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "Kalameh"
                            clip: true
                        }
                        Header_Lable {

                            color: "#ffffff"
                            text: qsTr("Priority")
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 3
                            font.pixelSize: 14
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "Kalameh"
                            clip: true
                        }
                        Header_Lable {
                            color: "#ffffff"
                            text: qsTr("Latitude & Longitude")

                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 2
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "Kalameh"
                            clip: true
                        }
                        Header_Lable {
                            color: "#ffffff"
                            text: qsTr("Sensors")
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 2
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "Kalameh"
                            clip: true
                        }
                        Header_Lable {
                            hideRec: false
                            color: "#ffffff"
                            text: qsTr("Funcations")
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 4
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "Kalameh"
                            clip: true
                        }

                    }
                }
                TableView {
                    id: tableView
                    Layout.fillWidth: true
                    // implicitWidth: parent.width

                    // Layout.preferredHeight: 550
                    Layout.fillHeight: true
                    Layout.topMargin: 0
                    clip: true

                    model: tableModel
                // model: TableModel {}


                    delegate: Rectangle {
                        implicitWidth: tableView.width
                          width: tableView.width

                         Layout.fillWidth: true
                        implicitHeight: 41
                        // color: index % 2 === 0 ? "#f5f5f5" : "#ffffff"
                        color: "#141414"

                        radius: 12
                        // Priority (Icon + Text + Icon)
                        RowLayout {
                            anchors.fill: parent
                            Header_Lable {
                                color: "#ffffff"
                                text: objectId
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.preferredWidth: 1
                                pipe_height: 28
                                pipe_margin: 7
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.weight: Font.Bold
                                font.family: "Kalameh"
                                clip: true

                            }

                            Priority_Icon_Text_Icon{
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.preferredWidth: 3
                                _icon1: priorityIcon1
                                _icon2: priorityIcon2
                                _text:priorityText
                                clip: true

                            }
                            Latitude_Longitude{
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.preferredWidth: 2
                                _text:latlong
                                clip: true
                            }
                            Sensors{

                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.preferredWidth: 2
                                _icon1: latlong_Icon1
                                _icon2: latlong_Icon2
                                _icon3: latlong_Icon3
                                _icon4: latlong_Icon4
                                clip: true
                            }
                            Functions_Icon_Text
                            {
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.preferredWidth: 4
                                _icon:function_Icon
                                _text:funcText
                                clip: true
                            }
                        }
                    }
                }
                // TableView
            }


        }


    }


    states: [
        State {
            name: "clicked"
        }

    ]

}
}
