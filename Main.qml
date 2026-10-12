import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Mobile LaTeX Editor"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 10

        Label {
            text: "Mobile LaTeX Editor"
            font.pixelSize: 22
        }

        TextArea {
            id: editor
            Layout.fillWidth: true
            Layout.fillHeight: true

            text: "\\documentclass{article}\n\\begin{document}\nHello, LaTeX!\n\\end{document}"
            font.family: "monospace"
            wrapMode: TextEdit.NoWrap
            selectByMouse: true
        }

        Button {
            text: "Clear"
            onClicked: editor.clear()
        }
    }
}
