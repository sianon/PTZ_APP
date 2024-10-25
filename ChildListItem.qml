import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: childRoot
    width: parent.width
    height: 50

    property string text
    property string iconSource

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10

        Image {
            source: childRoot.iconSource
            width: 30
            height: 30
            fillMode: Image.PreserveAspectFit
        }

        Text {
            text: childRoot.text
            font.pointSize: 16
            Layout.alignment: Qt.AlignVCenter
            anchors.leftMargin: 10
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: "lightgray"
        border.width: 1
    }
}
