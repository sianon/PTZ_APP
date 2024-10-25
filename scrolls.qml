import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 640
    height: 480
//    title: "ScrollView Example"
    Rectangle {
        width: 640
        height: 480
        color: "#212126"
        //        anchors.fill: parent
    }
    ScrollView {
        anchors.fill: parent

        // ���ݿ������κοɹ�����Ԫ��
        Column {
            width: parent.width
            spacing: 10

            // ʾ���ı�
            Text {
                width: parent.width
                wrapMode: Text.WordWrap
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            }

            // ʾ����ť
            Button {
                text: "Button 1"
            }

            Button {
                text: "Button 2"
            }

            Button {
                text: "Button 3"
            }

            // ʾ���б�
            ListView {
                width: parent.width
                height: 200
                model: 20

                delegate: Item {
                    width: parent.width
                    height: 50
                    Text {
                        anchors.centerIn: parent
                        text: "Item " + (index + 1)
                    }
                }
            }

            // �����ı�����
            Text {
                width: parent.width
                wrapMode: Text.WordWrap
                text: "More text here to demonstrate scrolling. Add as much text as needed to make the ScrollView demonstrate vertical scrolling."
            }
        }
    }
}