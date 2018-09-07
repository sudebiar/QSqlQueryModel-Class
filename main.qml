import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1



ApplicationWindow {
    id:window
    visible: true
//    width: 800
//    height: 600
    width: Screen.width
    height: Screen.height
    color: "papayawhip"
    title: qsTr("Salek")

    //  TblView{


    //  }

    onClosing: {

//        stackView.clear()
//        stackView.push(stackView.initialItem)

        stackView.pop(null)


    }

    ToolButton {
        id:toolbtn
        z:1
        width:128
        height: 128
        contentItem: Image {
            fillMode: Image.Pad

            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            source: stackView.depth > 1 ? "Color80.png" : "Color80.png"
        }
        onClicked: {
            if (stackView.depth > 1) {
                stackView.pop()
                listView.currentIndex = -1
            } else {
                drawer.open()
            }
        }
    }


    Drawer {
        id: drawer

        width: Math.min(window.width, window.height) / 4 * 2
        height: window.height
        dragMargin: stackView.depth > 1 ? 0 : undefined

        Rectangle{
            anchors.fill: parent
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#ffee95";
                }
                GradientStop {
                    position: 0.44;
                    color: "#caa079";
                }
                GradientStop {
                    position: 1.00;
                    color: "#ffe7a2";
                }
            }
            Rectangle{

                id:rectId
                width:parent.width
                height: 80
                radius:10
                gradient: Gradient {
                    GradientStop {
                        position: 0.00;
                        color: "#ffffff";
                    }
                    GradientStop {
                        position: 0.50;
                        color: "#eacb74";
                    }
                    GradientStop {
                        position: 1.00;
                        color: "#ffffff";
                    }
                }
                Image {
                    width:64
                    height:64
                    source: "qrc:/33-512.png"
                }
                Text {
                    anchors.centerIn: parent
                    text: qsTr("اشعارسالک")
                    font.family: "Afra"
                    font.pointSize: 25
                    color: "black"
                }
                MouseArea{

                    anchors.fill: parent
                    onClicked: drawer.close()
                }
            }
            ListView {

                id: listView
                interactive: false
                focus: true
                currentIndex: -1
                anchors.fill: parent
                anchors.topMargin: 150

                delegate: Rectangle
                                {
                                    id:rectDelegate
                                    radius: 16
                                    width: parent.width
                                    height: 60

                                    clip: true

//                                    border.color: "#4682b4"

                                    antialiasing: true



                                    gradient: Gradient {
                                        GradientStop {
                                            position: 0.70;
                                            color: "#f7ec92";
                                        }
                                        GradientStop {
                                            position: 1.00;
                                            color: "#ec9822";
                                        }
                                    }

                                    Text {
                                        id: name
                                        text: model.title
                                        anchors.centerIn: parent
                                        font.family: "AFRa"
                                        font.pointSize: 25
                                        color: "#875E13"
                                    }
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            listView.currentIndex = index
                                            stackView.push(model.source)
                                            drawer.close()
                                        }
                                        onPressed: name.color = "White"
                                        onExited: name.color = "#875E13"
                                    }
                                }

                model: ListModel {
                    ListElement {title: "لیست اشعار"; source: "qrc:/LstShow.qml"}
                    ListElement { title: "جستجو"; source: "qrc:/PoemPage.qml" }

                }

                ScrollIndicator.vertical: ScrollIndicator { }
            }
        }
    }
    StackView{
        id: stackView
        initialItem: myItem
        anchors.topMargin: 43
        anchors.fill: parent
        Image {
            anchors.topMargin: 60
            anchors.fill: parent
            source: "salek.jpg"
        }

    }

}





