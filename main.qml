import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //Construtor
    Component.onCompleted: {
        for ( var ix = 0; ix < 10; ix++ ) {
            myListView.model.append( {valorText:'hola!Que tal!!' + ix } );
        }
    }

    ListView {
        anchors.fill : parent
        id: myListView
        model: ListModel {}
        spacing : 5
        delegate: Text {
            text: valorText
        }
    }

    //text
    Text{
        id: exitButton
        text:'Olá'

        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

    }
}
