import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0



Item {
    id: item1
        anchors.fill: window
    Rectangle {


        color:"seashell"
        anchors.topMargin: 60
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
        property string titleClicked


        ListView {
            id: list_view2
            width: 500
            layoutDirection: Qt.RightToLeft
            flickableDirection: Flickable.HorizontalAndVerticalFlick
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            anchors.topMargin: 0
            anchors.fill: parent
            clip: true
            delegate: Text{

                color: "#8f510b"
                                                anchors.centerIn: parent
                //                                anchors.fill: parent


                text:Poem
                //                font.family: "2  Davat"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 20
            }



    model: myPoem
}

}
}

