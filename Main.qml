import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
    width: 1024; height: 600
    minimumWidth: 1024; minimumHeight: 600
    visible: true
    title: qsTr("Spotify Desk Thing")

    color: "#1D3C47"

    RowLayout  {
        Image {
            source: "https://upload.wikimedia.org/wikipedia/en/a/ae/Jon_Bellion_-_Glory_Sound_Prep.png"

            width: 200; height: 200
        }
        Text {
            text: "Conversations\nwith my Wife"
            color: "white"

            font.pixelSize: 64
            font.bold: true
            font.family: "Plus Jakarta Sans"
        }
    }
}
