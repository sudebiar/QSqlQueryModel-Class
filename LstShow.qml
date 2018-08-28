import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Rectangle {
    //anchors.fill: parent
        color:"black"
        property string titleClicked
        ListView {
            Layout.alignment: Qt.AlignCenter
            anchors.fill: parent
            id: list_view1
            x: 125
            y: 100
            clip: true

            delegate: Rectangle{
                color: "seashell"
                height: 50
                radius: 15
                width: parent.width
                border.color: "silver"
                border.width: 5
                Text {
                    anchors.centerIn: parent
                    text:Title
                    font.family: "Mj_Beirut"
                    font.bold: true
                    font.pointSize: 25

                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                        mVarClass.onchangeTitle(Title)
                        stackView.push("qrc:/PoemPage.qml")
                        mVarClass.var_1 = Title
                        console.log(mVarClass.var_1)
                    }
                }


            }

            model: myModel
        }
    }

