import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Rectangle {
//    anchors.fill: parent
        color:"seashell"
        property string titleClicked
        ListView {
            id: list_view2
            Layout.alignment: Qt.AlignCenter
            anchors.fill: parent
            clip: true
            anchors.topMargin: 0
            delegate: Text{
                anchors.centerIn: parent
                text:Poem
                font.family: "Mj_Beirut"
                font.bold: true
                font.pointSize: 25
            }

            model: myPoem
        }
    }

