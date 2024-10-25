import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Collapsible List Items Example")

    ListView {
        anchors.fill: parent
        spacing: 10

        model: ListModel {
            ListElement { type: "type1"; text: "Item 1"; iconSource: "qrc:/icons/icon1.png"; description: "Description 1" }
            ListElement { type: "type2"; text: "Item 2"; iconSource: "qrc:/icons/icon2.png"; description: "Description 2" }
            ListElement { type: "type3"; text: "Item 3"; iconSource: "qrc:/icons/icon3.png"; description: "Description 3" }
        }

//        delegate: CollapsibleItem {
//            text: model.text
//            iconSource: model.iconSource
//            description: model.description
//            type: model.type
//        }
    }
    RowLayout {
        ExclusiveGroup { id: tabPositionGroup }
        RadioButton {
            text: "Top"
            checked: true
            exclusiveGroup: tabPositionGroup
        }
        RadioButton {
            text: "Bottom"
            exclusiveGroup: tabPositionGroup
        }
    }
}
