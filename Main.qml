import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Shapes
import QtQuick.Effects

Window {
    width: 1024; height: 600
    minimumWidth: 1024; minimumHeight: 600
    visible: true
    title: qsTr("Desk Thing")
    color: "black"

    Rectangle {
        id: gradientBg
        width: parent.width / 2
        height: parent.height / 2
        anchors.verticalCenter: parent.top
        anchors.leftMargin: 500
        color: "#BB5772"
        opacity: 0
    }

    MultiEffect {
        source: gradientBg
        anchors.fill: gradientBg
        blurEnabled: true
        blurMax: 128
        blur: 1.0
        blurMultiplier: 5
    }

    RowLayout  {
        height: parent.height / 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25

        Image {
            id: albumCover
            source: "https://static.wikia.nocookie.net/jonbellion/images/1/1a/Jon_Bellion_-_Crop_Circles.jpg/revision/latest?cb=20220916024214"
            fillMode: Image.PreserveAspectFit

            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.height
        }
        ColumnLayout {
            anchors.top: Qt.alignTop
            Layout.topMargin: albumCover.height / 32
            Text {
                text: "Single"
                color: "white"

                font { family: "Inter"; pixelSize: 32 }
            }
            Text {
                text: "Crop Circles"
                color: "white"

                font { family: "Plus Jakarta Sans"; pixelSize: 96; bold: true; letterSpacing: -5 }
                lineHeight: 0.75
            }
            Text {
                text: "Jon Bellion"
                color: "white"

                font { family: "Inter"; pixelSize: 32 }
            }
        }
    }
}
