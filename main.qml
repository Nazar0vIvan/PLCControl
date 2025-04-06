import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

import Components 1.0
import AppStyles 1.0

Window {
  id: root

  width: 640
  height: 480
  visible: true
  color: Styles.background.dp00

  ColumnLayout {
    id: mainlayout

    anchors.fill: parent
    spacing: 50

    GridLayout {
      id: grid

      columns: 3
      rows: 2
      columnSpacing: 20
      rowSpacing: 20

      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        color: "yellow"
        labelText: "POWER"
      }
      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        labelText: "RUN"
        color: "green"
      }
      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        color: "green"
      }
      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        color: "red"
        width: 70; height: 70
      }
      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        color: "red"
        width: 70; height: 70
      }
      LED {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        color: "red"
        width: 70; height: 70
      }

    }

    RowLayout {
      id: controlsLayout

      Button {
        text: "PLC OFF"
      }
      Button {
        text: "VFD OFF"
      }
    }
    Item {Layout.fillHeight: true}
  }
}
