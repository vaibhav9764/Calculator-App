

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    property int btnWidth: 150
    property int btnHeight: 100
    property string btnText: '+'
    property color btnTextColor: "#ffffff"

    width: btnWidth
    height: btnHeight
    color: style.primaryBg
    radius: style.btnBordeRadius
    border.color: style.btnBorder
    border.width: style.btnBorderWidth
    Style {
        id: style
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        Connections {
            target: mouseArea
            onPressed: root.state = "press"
        }

        Connections {
            target: mouseArea
            onReleased: root.state = ""
        }
        Connections {
            onClicked: {
                // Emit a signal to notify the parent component
                clicked()
            }
        }
    }

    Text {
        id: text1
        width: 0.8 * parent.width
        height: 0.8 * parent.height
        text: btnText
        color: btnTextColor
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: style.btnFontSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.styleName: "Bold"
        font.weight: Font.Bold
        anchors.horizontalCenter: parent.horizontalCenter
    }
    states: [
        State {
            name: "press"

            PropertyChanges {
                target: root
                color: style.secondaryBg
            }

            PropertyChanges {
                target: text1
                color: style.btnFontColorPress
            }
        }
    ]
    signal clicked
}
