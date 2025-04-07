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
    id: mainLayout

    anchors.fill: parent
    anchors.topMargin: 20

    CustomGroupBox {
      id: leds

      Layout.preferredHeight: 300
      Layout.preferredWidth: 600
      Layout.alignment: Qt.AlignTop
      Layout.margins: 10
      groupBoxTitle: "Panel"

      GridLayout {
        id: grid

        anchors.fill: parent
        columns: 3
        rows: 2
        columnSpacing: 20
        rowSpacing: 20

        LED {
          id: led_power
          Layout.preferredWidth: 100; Layout.preferredHeight: 100
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 0
          Layout.column: 0
          color: "yellow"
          labelText: "POWER"

        }
        LED {
          id: led_run
          Layout.preferredWidth: 100; Layout.preferredHeight: 100
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 0
          Layout.column: 1
          labelText: "RUN"
          color: "green"
        }
        LED {
          id: led_r1
          Layout.preferredWidth: 70; Layout.preferredHeight: 70
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 1
          Layout.column: 0
          color: "red"
          labelText: "R1"
        }
        LED {
          id: led_r2
          Layout.preferredWidth: 70; Layout.preferredHeight: 70
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          color: "red"
          Layout.row: 1
          Layout.column: 1
          labelText: "R2"
        }
        LED {
          id: led_r3
          Layout.preferredWidth: 70; Layout.preferredHeight: 70
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 1
          Layout.column: 2
          color: "red"
          labelText: "R3"
        }
      }

    }

    CustomGroupBox {
      id: control

      Layout.preferredHeight: 300
      Layout.preferredWidth: 600
      Layout.margins: 10
      Layout.alignment: Qt.AlignTop
      groupBoxTitle: "Controls"


      ColumnLayout {
        id: controlLayout

        anchors.fill: parent
        anchors.margins: 10

        Button {
          Layout.alignment: Qt.AlignTop
          text: "Connect"
        }
        Button {
          Layout.alignment: Qt.AlignTop
          text: "Turn ON R1"
        }
     }
    }

    Item { Layout.fillHeight: true }

  }
}
