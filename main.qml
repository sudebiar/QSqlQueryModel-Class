import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TableView {
        anchors.fill: parent

        TableViewColumn {
            role: "ID"    // These roles are roles names coincide with a C ++ model
            title: "Id"
        }

        TableViewColumn {
            role: "TitleRole"    // These roles are roles names coincide with a C ++ model
            title: "Title"
        }

        TableViewColumn {
            role: "PoemRole"  // These roles are roles names coincide with a C ++ model
            title: "Poem"
        }

        TableViewColumn {
            role: "GrpRole" // These roles are roles names coincide with a C ++ model
            title: "Group"
        }

        // We set the model in the TableView
        model: myModel
    }
}
