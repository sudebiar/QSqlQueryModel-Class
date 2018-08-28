import QtQuick 2.5
import QtQuick.Controls 2.1


ApplicationWindow {
    id:window
    visible: true
    width: 640
    height: 480
    color: "papayawhip"
    title: qsTr("Salek")

    //  TblView{


    //  }

    ToolButton {
        id:toolbtn
        z:1
        contentItem: Image {
            fillMode: Image.Pad
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            source: stackView.depth > 1 ? "back@4x.png" : "drawer@4x.png"
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
            color:"wheat"
            ListView {
                id: listView
                focus: true
                currentIndex: -1
                anchors.fill: parent

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
                                            position: 0.00;
                                            color: "#f5cea2";
                                        }
                                        GradientStop {
                                            position: 0.43;
                                            color: "#f7ebd6";
                                        }
                                        GradientStop {
                                            position: 1.00;
                                            color: "#f3c26c";
                                        }
                                    }
                                    Text {
                                        id: name
                                        text: model.title
                                        anchors.centerIn: parent
                                        font.family: "Mj_Beirut"
                                        font.bold: true
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
                                        onPressed: name.color = "black"
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

        anchors.topMargin: 43
        anchors.fill: parent

    }

}





