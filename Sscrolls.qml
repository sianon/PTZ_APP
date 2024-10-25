import QtQuick 2.11
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item{
    width: 800
    height: 480
    Rectangle {
        width: 800//                    height: parent.height
        height: 400
        color: "#212126"
    }
    ScrollView{
        anchors.fill: parent
        ColumnLayout{
            Row{
                Layout.leftMargin: 50
                height: 36
                Label{
                    width: 118
                    text: "热点开关"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Item{
                    width: 500
                    height: 20
                }
                Switch{
                    //                Layout.alignment: Qt.AlignVCenter
                    id: pot
                    width: 90
                    height: 40
                    text: qsTr("View")

                }
            }
            Row{
                Layout.leftMargin: 90
                visible: pot.checked
                Label{
                    width: 118
                    text: "设备名称"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                TextField{
                    text: "热点开关"
                    id:download

                    width: 120
                    height: 30
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    Layout.alignment: Qt.AlignRight
                }
            }
            Row{
                Layout.leftMargin: 90
                visible: pot.checked
                Label{
                    width: 118
                    text: "密码"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                TextField{
                    text: "热点开关"

                    width: 120
                    height: 30
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    Layout.alignment: Qt.AlignRight
                }
            }
            Row{
                Layout.leftMargin: 50
                height: 36
                Label{
                    width: 118
                    text: "4G网络"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Item{
                    width: 500
                    height: 20
                }
                Switch{
                    //                Layout.alignment: Qt.AlignVCenter
                    id: fourG
                    width: 90
                    height: 40
                    text: qsTr("View")

                }
            }
            Row{
                Layout.leftMargin: 90
                visible: fourG.checked
                Label{
                    width: 118
                    text: "运营商"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Label{
                    text: "热点开关"
                    width: 120
                    height: 30
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    Layout.alignment: Qt.AlignRight
                }
            }
            Row{
                Layout.leftMargin: 90
                visible: fourG.checked
                Label{
                    width: 118
                    text: "信号强度"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Label{
                    text: "热点开关"

                    width: 120
                    height: 30
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    Layout.alignment: Qt.AlignRight
                }
            }
            Row{
                Layout.leftMargin: 90
                visible: fourG.checked
                Label{
                    width: 118
                    text: "网络状态"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Label{
                    text: "正常可用"

                    width: 120
                    height: 30
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    Layout.alignment: Qt.AlignRight
                }
            }
            Row{
                Layout.leftMargin: 50
                height: 36
                Label{
                    width: 118
                    text: "WLAN"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Item{
                    width: 500
                    height: 320
                }
                Switch{
                    //                Layout.alignment: Qt.AlignVCenter
                    id: wlan
                    width: 90
                    height: 40
                    text: qsTr("View")

                }
            }
            RowLayout{
                Layout.leftMargin: 90
                height: 66
                width: parent.width - 480
                visible: wlan.checked
                Rectangle {
                    color: "green"
                    anchors.fill: parent
                }

            }
            Row{
                Layout.leftMargin: 50
                height: 36
                Label{
                    width: 118
                    text: "蓝牙"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Item{
                    width: 500
                    height: 120
                }
                Switch{
                    //                Layout.alignment: Qt.AlignVCenter
                    id: bluetooth
                    width: 90
                    height: 40
                    text: qsTr("View")

                }
            }
            Row{
                Layout.leftMargin: 50
                height: 36
                Label{
                    width: 118
                    text: "北斗定位"
                    color:"white"
                    font.pixelSize: fontSizeMedium
                    //                Layout.alignment: Qt.AlignVCenter
                }
                Item{
                    width: 500
                    height: 20
                }
                Switch{
                    //                Layout.alignment: Qt.AlignVCenter
                    id: gps
                    width: 90
                    height: 40
                    text: qsTr("View")

                }
            }
        }
//        ListView{
//            id:listViews
//            visible: true
//            anchors.fill: parent
//            anchors.top: parent.top
//            anchors.topMargin:20
//            spacing: 20
//            model: ListModel{
//                id:listModels
//            }
//            delegate: list_delegate
//        }
//
//        Component.onCompleted: {
//            addModelData("hotspot","2018.2.1","设备名称","13kb")
//            addModelData("fourG","2018.2.4","运营商","43kb")
//            addModelData("fourG","2018.2.4","信号强度","43kb")
//            addModelData("fourG","2018.2.4","网络状态","43kb")
//            addModelData("hotspot","2018.2.2","密码","23kb")
//            //        addModelData("class A","2018.2.3","ccc","33kb")
//            addModelData("Wlan","2018.2.5","eee","53kb")
//            addModelData("Wlan","2018.2.6","fff","675kb")
//            addModelData("bluetooth","2018.2.7","设备名称","45kb")
//            addModelData("bluetooth","2018.2.7","接收的文件","45kb")
//            addModelData("bluetooth","2018.2.7","已配对设备","45kb")
//            addModelData("bluetooth","2018.2.7","可配对设备","45kb")
//            addModelData("navigate","2018.2.7","ggg","45kb")
//        }
//
//        Component{
//            id:list_delegate
//
//            Column{
//                id:objColumn
//
//                Component.onCompleted: {
//                    for(var i = 1; i < objColumn.children.length - 1; ++i) {
//                        objColumn.children[i].visible = false
//                    }
//                }
//
//                MouseArea{
//                    width:listView.width
//                    height: objItem.implicitHeight
//                    enabled: objColumn.children.length > 2
//                    onClicked: {
//                        console.log("onClicked..")
//                        var flag = false;
//                        for(var i = 1; i < parent.children.length - 1; ++i) {
//                            console.log("onClicked..i=",i)
//                            flag = parent.children[i].visible;
//                            parent.children[i].visible = !parent.children[i].visible
//                        }
//                        console.log("onClicked..flag = ",flag)
//                        if(!flag){
//                            iconAin.from = 0
//                            iconAin.to = 90
//                            iconAin.start()
//                        }
//                        else{
//                            iconAin.from = 90
//                            iconAin.to = 0
//                            iconAin.start()
//                        }
//                    }
//                    Row{
//                        id:objItem
//                        spacing: 10
//                        leftPadding: 20
//
//                        Image {
//                            id: icon
//                            width: 10
//                            height: 20
//                            source: "icon_retract.png"
//                            anchors.verticalCenter: parent.verticalCenter
//                            RotationAnimation{
//                                id:iconAin
//                                target: icon
//                                duration: 100
//                            }
//                        }
//                        Loader{
//                            id: dynamicLoader
//                            sourceComponent: {
//                                if(meetingName === "hotspot"){
//                                    return hotspot
//                                }else if (meetingName === "fourG") {
//                                    return fourG;
//                                }else if (meetingName === "Wlan") {
//                                    return wlan;
//                                }else if (meetingName === "bluetooth") {
//                                    return bluetooth;
//                                }else if (meetingName === "navigate") {
//                                    return navigate;
//                                } else {
//                                    return null;
//                                }
//                            }
//                        }
//                        Component{
//                            id:hotspot
//                            Label{
//                                width: 118
//                                text: "热点开关"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }
//                        Component{
//                            id:fourG
//                            Label{
//                                width: 118
//                                text: "4G网络"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }
//                        Component{
//                            id:wlan
//                            Label{
//                                width: 118
//                                text: "WLAN"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }Component{
//                            id:bluetooth
//                            Label{
//                                width: 118
//                                text: "蓝牙"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }
//                        Component{
//                            id:navigate
//                            Label{
//                                width: 118
//                                text: "北斗定位"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }
//                        Item{
//                            height: 20
//                            width: 500
//                        }
//                        Switch{
//                            Layout.alignment: Qt.AlignVCenter
//                            id: pot
//                            width: 90
//                            height: 40
//                            text: qsTr("View")
//
//                        }
//                    }
//                }
//                Repeater {
//                    model: subNode
//
//                    delegate: Row{
//                        width: parent.width
//                        height: 50
//                        Rectangle {
//                            color: "#7f7f7f"
//                            anchors.fill: parent
//                        }
//                        Column{
//                            width: 150
//                            anchors{
//                                left: fileicon.right
//                                top: parent.top
//                                topMargin:5
//                            }
//                            spacing: 10
//                            leftPadding: 80
//
//                            Label{
//                                text: model.fileName
//                                font.pixelSize: fontSizeMedium
//                            }
//                        }
//                        Item{
//                            width: 220
//                            height: 20
//                        }
//                        Loader{
//                            id: dynamicLoaders
//                            sourceComponent: {
//                                if(meetingName === "hotspot"){
//                                    return hotspot
//                                }else if (meetingName === "fourG") {
//                                    return fourGChild;
//                                } else {
//                                    return null;
//                                }
//                            }
//
//                            onLoaded: {
//                                if (dynamicLoaders.item) {
//                                    if (fileName === "运营商") {
//                                        dynamicLoaders.item.text = "电信"
//                                    } else if (fileName === "信号强度") {
//                                        dynamicLoaders.item.text = "强"
//                                    } else if (fileName === "网络状态") {
//                                        dynamicLoaders.item.text = "网络正常可用"
//                                    }
//                                }
//                            }
//                        }
//                        Component{
//                            id:hotspot
//                            TextField{
//                                text: "热点开关"
//                                id:download
//
//                                width: 120
//                                height: 30
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignRight
//                            }
//
//                        }
//                        Component{
//                            id:fourGChild
//                            Label{
//                                id:names
//                                objectName: "fourGChild"
//                                text: "5G网络"
//                                color:"white"
//                                font.pixelSize: fontSizeMedium
//                                Layout.alignment: Qt.AlignVCenter
//                            }
//
//                        }
//                    }
//                }
//            }
//        }


        function addModelData(meetingName,date,fileName,size){
            var index = findIndex(meetingName)
            if(index === -1){
                listModel.append({"meetingName":meetingName,"date":date,"level":0,
                    "subNode":[{"fileName":fileName,"size":size,"level":1,"subNode":[]}]})
            }
            else{
                listModel.get(index).subNode.append({"fileName":fileName,"size":size,"level":1,"subNode":[]})
            }

        }

        function findIndex(name){
            for(var i = 0 ; i < listModel.count ; ++i){
                if(listModel.get(i).meetingName === name){
                    return i
                }
            }
            return -1
        }
    }
}