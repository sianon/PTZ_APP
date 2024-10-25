import QtQuick 2.2

Rectangle {
    width: 360;
    height: 240;
    color: "#EEEEEE";
    id: rootItem;
    property int xx: 1;
    Rectangle {
        id: rect;
        width: 50;
        height: 150;
        anchors.centerIn: parent;
        color: "blue";

//        PropertyAnimation {
//            id: animation;
//            target: rect;
//            property: "width";
//            to: 150;
//            duration: 200;
//        }
        ParallelAnimation {
            id: animation
            PropertyAnimation {
                target: rect
                property: "width"
                from: 50
                to: 300
                duration: 1000
            }
            PropertyAnimation {
                target: rect
                property: "height"
                from: 150
                to: 300
                duration: 1000
            }
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                if(xx == 1){
                    console.log("start 0");
                    animation.start(); //animation.running = true;
                    xx = 0;
                }else{
                    console.log("start 1");
                    animation2.start();
                    xx = 1;
                }
            }
        }
    }
}