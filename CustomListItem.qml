import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: parent.width
    height: collapsedHeight

    property string text
    property string iconSource
    property var childItems

    property real collapsedHeight: 60
    property real expandedHeight: collapsedHeight + childItems.length * 50
    property bool expanded: false

    Column {
        id: mainColumn
        width: parent.width
        height: expanded ? expandedHeight : collapsedHeight

        RowLayout {
            width: parent.width
            height: collapsedHeight
            spacing: 10

            Image {
                source: root.iconSource
                width: 40
                height: 40
                fillMode: Image.PreserveAspectFit
            }

            Text {
                text: root.text
                font.pointSize: 20
                Layout.alignment: Qt.AlignVCenter
                anchors.leftMargin: 10
            }
        }

        Repeater {
            model: root.childItems
            delegate: ChildListItem {
                text: model.text
                iconSource: model.iconSource
            }
            visible: root.expanded
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: "lightgray"
        border.width: 1
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.expanded = !root.expanded
            mainColumn.height = root.expanded ? expandedHeight : collapsedHeight
        }
    }
}
