
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import Sample

Rectangle {
    id: rectangle
    width: Screen.width
    height: Screen.height
    color: style.mainBg

    Style {

        id: style
    }

    Column {
        id: column
        width: parent.width
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        padding: 0
        rightPadding: 0
        bottomPadding: 20
        topPadding: 20
        leftPadding: 0
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        TextField {
            id: result
            width: 0.95 * parent.width
            height: 0.35 * parent.height
            color: style.textFieldColor
            text: ""
            horizontalAlignment: Text.AlignRight
            font.weight: Font.DemiBold
            // selectionColor: style.textFieldColor
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: style.textFieldFontSize
            placeholderText: qsTr("0")

            background: Rectangle {
                color: "black"
                radius: 5 // Optional: Rounded corners
            }
        }
        Row {
            id: row0
            width: 0.95 * parent.width
            height: 0.11 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 0
            spacing: 10
            CustomButton {
                id: btn1

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "AC"
                Connections {
                    target: btn1
                    onClicked: result.text = ''
                }
            }

            CustomButton {
                id: btn2

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "CE"
                Connections {
                    target: btn2
                    onClicked:{
                        if (result.text.length > 0) {
                                   result.text = result.text.substring(0, result.text.length - 1);
                               }
                    }
                }
            }

            CustomButton {
                id: btn3

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "%"

                Connections {
                    target: btn3
                    onClicked: result.text += '%'
                }
            }

            CustomButton {
                id: btn4
                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "/"

                Connections {
                    target: btn4
                    onClicked: result.text += '/'
                }
            }
        }

        Row {
            id: row1
            width: 0.95 * parent.width
            height: 0.11 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 0
            spacing: 10
            CustomButton {
                id: btn5

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "7"
                Connections {
                    target: btn5
                    onClicked: result.text += '7'
                }
            }

            CustomButton {
                id: btn6

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "8"
                Connections {
                    target: btn6
                    onClicked: result.text += '8'
                }
            }

            CustomButton {
                id: btn7

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "9"

                Connections {
                    target: btn7
                    onClicked: result.text += '9'
                }
            }

            CustomButton {
                id: btn8
                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "*"

                Connections {
                    target: btn8
                    onClicked: result.text += '*'
                }
            }
        }

        Row {
            id: row2
            width: 0.95 * parent.width
            height: 0.11 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 0
            spacing: 10
            CustomButton {
                id: btn9

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "4"

                Connections {
                    target: btn9
                    onClicked: result.text += '4'
                }
            }

            CustomButton {
                id: btn10
                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "5"
                Connections {
                    target: btn10
                    onClicked: result.text += '5'
                }
            }

            CustomButton {
                id: btn11

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "6"
                Connections {
                    target: btn11
                    onClicked: result.text += '6'
                }
            }

            CustomButton {
                id: btn12

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "-"
                Connections {
                    target: btn12
                    onClicked: result.text += '-'
                }
            }
        }

        Row {
            id: row3
            width: 0.95 * parent.width
            height: 0.11 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 0
            spacing: 10
            CustomButton {
                id: btn13
                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "1"
                Connections {
                    target: btn13
                    onClicked: result.text += '1'
                }
            }

            CustomButton {
                id: btn14

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "2"
                Connections {
                    target: btn14
                    onClicked: result.text += '2'
                }
            }

            CustomButton {
                id: btn15

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "3"
                Connections {
                    target: btn15
                    onClicked: result.text += '3'
                }
            }

            CustomButton {
                id: btn16

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "+"
                Connections {
                    target: btn16
                    onClicked: result.text += '+'
                }
            }
        }

        Row {
            id: row4
            width: 0.95 * parent.width
            height: 0.11 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 0
            spacing: 10
            CustomButton {
                id: btn17

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.btnFontColorPress
                btnText: "Pow"
                Connections {
                    target: btn17
                    onClicked: result.text += '**'
                }
            }

            CustomButton {
                id: btn18

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "0"
                Connections {
                    target: btn18
                    onClicked: result.text += '0'
                }
            }

            CustomButton {
                id: btn19

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "."
                Connections {
                    target: btn19
                    onClicked: {

                        result.text += '.'
                    }
                }
            }

            CustomButton {
                id: btn20

                btnWidth: 0.245 * parent.width
                btnHeight: parent.height
                btnTextColor: style.textFieldColor
                btnText: "="
                color: style.btnFontColorPress
                Connections {
                    target: btn20
                    onClicked: {
                        // var input = result.text

                        // try {

                        //     var resultValue = eval(input)

                        //     if (!isNaN(resultValue) && isFinite(resultValue)) {

                        //         result.text = resultValue.toString()
                        //     } else {

                        //         result.text = "Invalid Input"
                        //     }
                        // } catch (error) {

                        //     result.text = "Invalid Input"
                        // }
                        result.text = backend.evaluateExpression(result.text)
                    }
                }
            }
        }
    }
}
