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

    Rectangle {
      id: leds

      Layout.fillWidth: true; Layout.fillHeight: true;
      color: "transparent"
      border{ width: 1; color: "red" }

      GridLayout {
        id: grid

        anchors.fill: parent
        columns: 3
        rows: 2
//        columnSpacing: 20
//        rowSpacing: 20

        LED {
          id: led_power
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 0
          Layout.column: 0
          color: "yellow"
          labelText: "POWER"
          width: 100; height: 100
        }
        LED {
          id: led_run
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 0
          Layout.column: 1
          labelText: "RUN"
          color: "green"
          width: 100; height: 100
        }
        LED {
          id: led_r1
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 1
          Layout.column: 0
          color: "red"
          labelText: "R1"
          width: 70; height: 70
        }
        LED {
          id: led_r2
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          color: "red"
          Layout.row: 1
          Layout.column: 1
          labelText: "R2"
          width: 70; height: 70
        }
        LED {
          id: led_r3
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
          Layout.row: 1
          Layout.column: 2
          color: "red"
          labelText: "R3"
          width: 70; height: 70
        }
      }
    }

    Component.onCompleted: {
        grid.forceLayout(); // Force layout update when components are ready
    }

//    GroupBox {
//      id: control

//     // Layout.fillWidth: true; Layout.fillHeight: true;
//      ColumnLayout {
//        id: controlLayout

//        anchors.fill: parent

//        Button {
//          text: "Connect"
//        }
//      }
//    }

  }
}
