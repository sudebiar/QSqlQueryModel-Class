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
            anchors.topMargin: 10
            anchors.fill: parent
            clip: true
            delegate: Text{
                color: "#8f510b"
                anchors.centerIn: parent

                text:Poem
                font.family: "2  Davat"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 25
            }

            model: myPoem
        }
    }

