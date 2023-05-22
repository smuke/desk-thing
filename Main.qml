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
        anchors.fill: parent
        anchors.centerIn: parent

        Image {
            source: "https://upload.wikimedia.org/wikipedia/en/a/ae/Jon_Bellion_-_Glory_Sound_Prep.png"
            fillMode: Image.PreserveAspectFit

            Layout.preferredHeight: parent.height / 1.5
            Layout.leftMargin: 20
        }
        Text {
            text: "Conversations\nwith my Wife"
            color: "white"

            font { family: "Plus Jakarta Sans"; pixelSize: 64; bold: true }
        }
    }
}
