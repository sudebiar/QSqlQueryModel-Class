import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Item{
    id: item1

    Rectangle {
        //anchors.fill: parent
        color:"black"
        anchors.topMargin: 60
        anchors.fill: parent
        property string titleClicked
        ListView {
            Layout.alignment: Qt.AlignCenter
            anchors.fill: parent
            id: list_view1
            x: 125
            y: 100
            anchors.topMargin: 0
            clip: true

            delegate: mComponent

            ScrollBar.vertical: ScrollBar {
                  anchors.right: lview.left
                  width: 50
                  active: true
                  background: Item {
                      Rectangle {
                          anchors.centerIn: parent
                          height: parent.height
                          width: parent.width * 0.2
                          color: "#f5d375"
                          radius: width / 2
                      }
                  }

                  contentItem: Rectangle {
                      radius: width / 3
                      color: "#fdbd0a"
                  }


            Component{
                id:mComponent
                Rectangle{
                    color: "seashell"
                    height: 100
                    radius: 15
                    width: parent.width
                    border.color: "silver"
                    border.width: 5


                    Text {
                        color: "#af6804"
                        //                        anchors.fill: parent
                        anchors.centerIn: parent
                        text:Title
                        //                    font.family: "Mj_Beirut"
                        font.bold: true
                        font.pointSize: 22

                    }
                    ItemDelegate{
//                        anchors.right: parent.right
                        width:60
                        height: width
                        anchors.verticalCenter: parent.verticalCenter
                        contentItem:Rectangle{
                            radius: 15
                            color: "khaki"
                            Label {
                                anchors.centerIn: parent
                                text: index+1
                                font.pixelSize: 15
                                font.bold: true
                            }
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {

                            mVarClass.onchangeTitle(Title)
                            stackView.push("qrc:/PoemPage.qml")
                            //                            mVarClass.var_1 = Title
                            //                            console.log(mVarClass.var_1)
                        }
                    }


                }
            }
}

            model: myModel
        }

    }
}
