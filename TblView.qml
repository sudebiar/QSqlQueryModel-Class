import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls 1.4






TableView {
    anchors.fill: parent

    //        TableViewColumn {
    //            role: "ID"    // These roles are roles names coincide with a C ++ model
    //            title: "Id"
    //        }
    itemDelegate: Rectangle {

            height: 10 // put your height here
            border.color: "black"
            border.width: 1

            Text {
                anchors.verticalCenter: parent.verticalCenter
                color: styleData.textColor
                font.pixelSize: 10
                elide: styleData.elideMode
                text: styleData.value
            }
    }

    TableViewColumn {
        horizontalAlignment: Text.AlignHCenter

        role: "Title"    // These roles are roles names coincide with a C ++ model
        title: "Title"



    }

    //        TableViewColumn {
    //            role: "Poem"  // These roles are roles names coincide with a C ++ model
    //            title: "Poem"
    //        }

    //        TableViewColumn {
    //            role: "Grp" // These roles are roles names coincide with a C ++ model
    //            title: "Group"
    //        }

    // We set the model in the TableView
    model: myModel
}
