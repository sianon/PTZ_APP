import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.12
import QtMultimedia 5.15
import Local 1.0
import "./custom_qml"

ApplicationWindow{
    id: mainWindow

    visible: true
    width: 1280
    height: 720
    title: "气"
    color: "#555555"

    // flags: Qt.FramelessWindowHint

    function qml_method(val_arg){
        cpp_obj.onTestSlot(1, 2)
        console.log("qml method runing", val_arg, "return ok")
        return "ok"
    }

    function showLsDialog(){
        var dialog = LsDialog.showModal();
        dialog.exec();
    }

    Frame{
        id: main_frame
        visible: true
        width: parent.width
        height: parent.height
        leftPadding: 1
        rightPadding: 1
        topPadding: 1
        bottomPadding: 1
        background: Rectangle{
            color: "#555555"
        }

        ColumnLayout{
            id: main_column_layout
            anchors.fill: parent
            Rectangle{
                color: "#ffd64c"
                border.color: "#ffd64c"
            }
            Pane{
                id: main_first_column_pane
                visible: false
                objectName: "main_window"
                Layout.preferredHeight: 30
                Layout.fillWidth: true
                anchors.left: parent.left
                anchors.top: parent.top

                background: Rectangle{
                    color: "transparent"
                    // border.color: "#21be2b"
                }
            }
            Pane{
                id: main_tab_btn
                Layout.preferredHeight: 98
                Layout.fillWidth: true
                anchors.left: main_first_column_pane.left
                anchors.top: main_first_column_pane.bottom

                background: Rectangle{
                    color: "#131517"
                    // border.color: "#b2b8cc"
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter

                    TabBar{
                        id: tabBar
                        Layout.preferredHeight: 28
                        background: Rectangle{
                            color: "#2c2a38"
                        }
                        currentIndex: stackView.currentIndex
                        TabButton{
                            anchors.verticalCenter: parent.verticalCenter
                            height: 80
                            width: 228
                            font.family: "Microsoft YaHei"
                            text: "气体泄露实时监测"
                        }
                        TabButton{
                            height: 80
                            width: 228
                            anchors.verticalCenter: parent.verticalCenter
                            font.family: "Microsoft YaHei"
                            text: "录像回放"
                        }
                        TabButton{
                            height: 80
                            width: 228
                            anchors.verticalCenter: parent.verticalCenter
                            font.family: "Microsoft YaHei"
                            text: "维护与管理"
                        }
                        onCurrentIndexChanged: stack_layout.currentIndex = tabBar.currentIndex
                    }
                }
            }
            Pane{
                id: main_tab_container
                Layout.fillWidth: true
                anchors.left: main_tab_btn.left
                anchors.top: main_tab_btn.bottom
                anchors.bottom: main_status_bottom.top

                leftPadding: 3
                rightPadding: 3
                topPadding: 3
                bottomPadding: 3
                // anchors.margins: 8
                background: Rectangle{
                    color: "#42424e"
                }

                StackLayout{
                    id: stack_layout
                    currentIndex: 0
                    anchors.fill: parent

                    Rectangle{
                        anchors.fill: parent
                        color: "#42424e"
                    }
                    Rectangle{
                        color: "lightgreen"
                        Text{
                            text: "Content for Tab 2"
                        }
                    }

                    Rectangle{
                        color: "lightcoral"
                        Text{
                            text: "Content for Tab 4"
                        }
                    }
                    Rectangle{
                        color: "lightcoral"
                        Text{
                            text: "Content for Tab 5"
                        }
                    }
                    Rectangle{
                        color: "lightcoral"
                        Text{
                            text: "Content for Tab 6"
                        }
                    }
                    Rectangle{
                        anchors.fill: parent

                    }
                }
            }
            //bottom status
            Pane{
                id: main_status_bottom
                Layout.fillWidth: true
                Layout.preferredHeight: 26
                visible: false
                anchors.left: parent.left
                anchors.bottom: parent.bottom

                leftPadding: 1 // 左内边距
                rightPadding: 1 // 右内边距
                topPadding: 1 // 上内边距
                bottomPadding: 1 // 下内边距
                anchors.margins: 0
                background: Rectangle{
                    color: "#2c2a38"
                    // border.color: "#21be2b"
                }
                RowLayout{
                    id: row_layout_status_bottom
                    anchors.fill: parent

                    Layout.alignment: Qt.AlignVCenter
                    Item{
                        Layout.minimumWidth: 20 // 自定义间距
                    }
                    Item{
                        anchors.verticalCenter: parent.verticalCenter
                        Rectangle{
                            width: 15
                            height: 15
                            color: "red"
                            radius: width / 2
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                    Text{
                        text: "西南服务器:"
                        color: "white"
                        font.pixelSize: 12
                        //                         Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    Text{
                        text: "未连接..."
                        color: "white"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    Item{
                        Layout.fillWidth: true // 自定义间距
                    }
                    Text{
                        color: "white"
                        text: "处理器:"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    ProgressBar{
                        value: 70
                        padding: 1
                        background: Rectangle{
                            implicitWidth: 100
                            implicitHeight: 14
                            color: "#e6e6e6"
                            radius: 5
                        }
                        contentItem: Item{
                            implicitWidth: 100
                            implicitHeight: 12

                            Rectangle{
                                width: 50
                                height: parent.height
                                radius: 4
                                color: "#c96600"
                            }
                        }
                    }
                    Text{
                        color: "white"
                        text: "内存:"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    ProgressBar{
                        value: 50
                        padding: 1
                        background: Rectangle{
                            implicitWidth: 100
                            implicitHeight: 14
                            color: "#e6e6e6"
                            radius: 5
                        }
                        contentItem: Item{
                            implicitWidth: 100
                            implicitHeight: 12

                            Rectangle{
                                width: 80
                                height: parent.height
                                radius: 4
                                color: "#17a81a"
                            }
                        }
                    }
                    Text{
                        width: 40
                        color: "white"
                        text: "硬盘:"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    ProgressBar{
                        value: 20
                        padding: 1
                        background: Rectangle{
                            implicitWidth: 100
                            implicitHeight: 14
                            color: "#e6e6e6"
                            radius: 5
                        }
                        contentItem: Item{
                            implicitWidth: 100
                            implicitHeight: 12

                            Rectangle{
                                width: 50
                                height: parent.height
                                radius: 4
                                color: "#17a81a"
                            }
                        }
                    }
                    Text{
                        color: "white"
                        text: "网络:"
                        font.pixelSize: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    }
                    ProgressBar{
                        value: 80
                        padding: 1
                        background: Rectangle{
                            implicitWidth: 100
                            implicitHeight: 14
                            color: "#e6e6e6"
                            radius: 5
                        }
                        contentItem: Item{
                            implicitWidth: 100
                            implicitHeight: 12

                            Rectangle{
                                width: 90
                                height: parent.height
                                radius: 4
                                color: "#17a81a"
                            }
                        }
                    }
                    Item{
                        Layout.minimumWidth: 8 // 自定义间距
                    }
                }
            }
        }
    }
}
