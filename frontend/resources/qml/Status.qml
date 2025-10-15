/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Status
import QtQuick.Layouts

Item {
    id: name
    width: Constants.width
    height: Constants.height
    // color: Constants.backgroundColor

    Image {
        id: image_backgrund
        anchors.fill: parent
        source: "../Images/Mask group.png"
        fillMode: Image.Stretch

        Rectangle {
            id: rectangle_menu
            width: 497
            color: "#292929"
            radius: 24
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 40
            anchors.topMargin: 160
            anchors.bottomMargin: 40

            ColumnLayout {
                id: columnlayout_menu
                anchors.fill: parent
                anchors.bottomMargin: 473

                // spacing: 2

                Rectangle {
                    id: rectangle_RADAR
                    // height: 128
                    color: "#00ffffff"
                    radius: 12
                    // anchors.left: parent.left
                    // anchors.right: parent.right
                    // anchors.top: parent.top
                    // anchors.leftMargin: 16
                    // anchors.rightMargin: 16
                    // anchors.topMargin: 20
                    Layout.fillWidth: true
                    Layout.preferredHeight: 93
                    Layout.margins: 20
                    RowLayout{
                        id:rowlayou_RADAR
                        anchors.fill: parent
                        anchors.margins: 20
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                        anchors.topMargin: 20
                        anchors.bottomMargin: 20
                        spacing: 15

                        Image {
                            id: image
                            source: "../icons/Frame 6.svg"
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.leftMargin: 10
                            fillMode: Image.PreserveAspectFit
                        }
                        Rectangle {
                            id:rectangel_text_icon
                            color: "#00ffffff"
                            Layout.rightMargin: 180
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            // anchors.fill: parent
                            Text {
                                id: text_RADAR
                                anchors.top: parent.top
                                anchors.topMargin: 8
                                color: "#FFFFFF"
                                text: qsTr("RADAR")
                                font.pixelSize: 18
                                font.styleName: "Bold"
                                font.family: "Kalameh"
                            }
                            Text {
                                id: text_Active
                                anchors.top: parent.top
                                anchors.topMargin: 35
                                anchors.left: parent.left
                                anchors.leftMargin: 19
                                color: "#FFFFFF"
                                text: qsTr("Active")
                                font.pixelSize: 14
                                font.styleName: "Light"
                                font.family: "Kalameh"
                            }

                            Image {
                                id: image2
                                anchors.top: parent.top
                                anchors.topMargin: 37
                                anchors.left: parent.left
                                anchors.leftMargin: 1
                                source: "../icons/Group 20.svg"
                                fillMode: Image.PreserveAspectFit
                            }
                        }


                        Image {
                            id: image1
                            // Layout.fillHeight: true
                            // Layout.fillWidth: true
                            Layout.maximumHeight: 24
                            Layout.maximumWidth: 24
                            Layout.rightMargin: 10
                            source: "../icons/setting-2.svg"
                            fillMode: Image.PreserveAspectFit
                        }


                    }
                    MouseArea {
                        id: mouseArea_RADAR
                        anchors.fill: parent
                        hoverEnabled: true

                        // onClicked: {
                        //     rectangle_RADAR.selected = !rectangle_RADAR.selected
                        //     console.log("RADAR clicked, selected =", rectangle_RADAR.selected)
                        // }

                        onEntered: rectangle_RADAR.color="#141414"
                        onExited: rectangle_RADAR.color="#00ffffff"
                    }
                    // Behavior on color {
                    //     ColorAnimation { duration: 150 }
                    // }
                }
                Rectangle {
                    id: rectangle_OPTIC
                    // height: 128
                    color: "#00ffffff"
                    radius: 12
                    // anchors.left: parent.left
                    // anchors.right: parent.right
                    // anchors.top: parent.top
                    // anchors.leftMargin: 16
                    // anchors.rightMargin: 16
                    // anchors.topMargin: 20
                    Layout.fillWidth: true
                    Layout.preferredHeight: 93
                    Layout.margins: 20
                    RowLayout{
                        id:rowlayou_OPTIC
                        anchors.fill: parent
                        anchors.margins: 20
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                        anchors.topMargin: 20
                        anchors.bottomMargin: 20
                        spacing: 15

                        Image {
                            id: image_OPTIC
                            source: "../icons/Frame_camera.svg"
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.leftMargin: 10
                            fillMode: Image.PreserveAspectFit
                        }
                        Rectangle {
                            id:rectangel_OPTIC_text_icon
                            color: "#00ffffff"
                            Layout.rightMargin: 180
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            // anchors.fill: parent
                            Text {
                                id: text_OPTIC
                                anchors.top: parent.top
                                anchors.topMargin: 8
                                color: "#FFFFFF"
                                text: qsTr("OPTIC")
                                font.pixelSize: 18
                                font.styleName: "Bold"
                                font.family: "Kalameh"
                            }
                            Text {
                                id: text_OPTIC_Active
                                anchors.top: parent.top
                                anchors.topMargin: 35
                                anchors.left: parent.left
                                anchors.leftMargin: 19
                                color: "#FFFFFF"
                                text: qsTr("Active")
                                font.pixelSize: 14
                                font.styleName: "Light"
                                font.family: "Kalameh"
                            }

                            Image {
                                id: image2_OPTIC
                                anchors.top: parent.top
                                anchors.topMargin: 37
                                anchors.left: parent.left
                                anchors.leftMargin: 1
                                source: "../icons/Group 20.svg"
                                fillMode: Image.PreserveAspectFit
                            }
                        }


                        Image {
                            id: image1_OPTIC
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.rightMargin: 10
                            Layout.maximumHeight: 24
                            Layout.maximumWidth: 24
                            source: "../icons/setting-2.svg"
                            fillMode: Image.PreserveAspectFit
                        }


                    }
                    MouseArea {
                        id: mouseArea_OPTIC
                        anchors.fill: parent
                        hoverEnabled: true

                        // onClicked: {
                        //     rectangle_RADAR.selected = !rectangle_RADAR.selected
                        //     console.log("RADAR clicked, selected =", rectangle_RADAR.selected)
                        // }

                        onEntered: rectangle_OPTIC.color="#141414"
                        onExited: rectangle_OPTIC.color="#00ffffff"
                    }
                    // Behavior on color {
                    //     ColorAnimation { duration: 150 }
                    // }
                }

                Rectangle {
                    id: rectangle_OPTICALFIBER
                    // height: 128
                    color: "#00ffffff"
                    radius: 12
                    // anchors.left: parent.left
                    // anchors.right: parent.right
                    // anchors.top: parent.top
                    // anchors.leftMargin: 16
                    // anchors.rightMargin: 16
                    // anchors.topMargin: 20
                    Layout.fillWidth: true
                    Layout.preferredHeight: 93
                    Layout.margins: 20
                    RowLayout{
                        id:rowlayou_OPTICALFIBER
                        anchors.fill: parent
                        anchors.margins: 20
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                        anchors.topMargin: 20
                        anchors.bottomMargin: 20
                        spacing: 15

                        Image {
                            id: image_OPTICALFIBER
                            source: "../icons/Frame_fiber.svg"
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.leftMargin: 10
                            fillMode: Image.PreserveAspectFit
                        }
                        Rectangle {
                            id:rectangel_OPTICALFIBER_text_icon
                            color: "#00ffffff"
                            Layout.rightMargin: 180
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            // anchors.fill: parent
                            Text {
                                id: text_OPTICALFIBER
                                anchors.top: parent.top
                                anchors.topMargin: 8
                                color: "#FFFFFF"
                                text: qsTr("OPTICALFIBER")
                                font.pixelSize: 18
                                font.styleName: "Bold"
                                font.family: "Kalameh"
                            }
                            Text {
                                id: text_OPTICALFIBER_Active
                                anchors.top: parent.top
                                anchors.topMargin: 35
                                anchors.left: parent.left
                                anchors.leftMargin: 19
                                color: "#FFFFFF"
                                text: qsTr("Active")
                                font.pixelSize: 14
                                font.styleName: "Light"
                                font.family: "Kalameh"
                            }

                            Image {
                                id: image2_OPTICALFIBER
                                anchors.top: parent.top
                                anchors.topMargin: 37
                                anchors.left: parent.left
                                anchors.leftMargin: 1
                                source: "../icons/Group 20.svg"
                                fillMode: Image.PreserveAspectFit
                            }
                        }


                        Image {
                            id: image1_OPTICALFIBER
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.rightMargin: 10
                            Layout.maximumHeight: 24
                            Layout.maximumWidth: 24
                            source: "../icons/setting-2.svg"
                            fillMode: Image.PreserveAspectFit
                        }


                    }
                    MouseArea {
                        id: mouseArea_OPTICALFIBER
                        anchors.fill: parent
                        hoverEnabled: true

                        // onClicked: {
                        //     rectangle_RADAR.selected = !rectangle_RADAR.selected
                        //     console.log("RADAR clicked, selected =", rectangle_RADAR.selected)
                        // }

                        onEntered: rectangle_OPTICALFIBER.color="#141414"
                        onExited: rectangle_OPTICALFIBER.color="#00ffffff"
                    }
                    // Behavior on color {
                    //     ColorAnimation { duration: 150 }
                    // }
                }
            }
        }


        Rectangle {
            id: rectangle1
            color: "#292929"
            radius: 24
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 580
            anchors.rightMargin: 40
            anchors.topMargin: 160
            anchors.bottomMargin: 40

            ColumnLayout {
                id: columnlayout_list
                anchors.fill: parent

                ListView {
                    id: listView

                    anchors.fill: parent
                    anchors.top: parent.top
                    anchors.topMargin: 80
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    ColorSpace :"red"

                    model: ListModel {
                        ListElement {
                            name: "Red"
                            colorCode: "red"
                            // Layout.fillWidth: true
                            // Layout.fillHeight: 38

                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "White"
                            colorCode: "white"
                        }
                        ListElement{
                            name:"Black"
                            colorCode:"#141414"

                        }
                    }
                    delegate: Row {
                        spacing: 5
                        Rectangle {
                            width: 100
                            height: 20
                            color: colorCode
                        }

                        Text {
                            width: 100
                            text: name
                        }
                    }
                }
            }
        }

    }
    states: [
        State {
            name: "clicked"
        }
    ]
}
