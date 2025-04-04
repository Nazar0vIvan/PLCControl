import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts

import Components 1.0
import AppStyles 1.0

Window {
  id: root

  width: 640
  height: 480
  visible: true
  color: Styles.background.dp00

  GridLayout {
    anchors.centerIn: parent
    columns: 3
    rows: 3
    columnSpacing: 20
    rowSpacing: 20

    LED {}
    LED {}
    LED {}
    LED {
      width: 50; height: 50
      Layout.alignment: Qt.AlignCenter
      color: "red"
    }
    LED {
      width: 50; height: 50
      Layout.alignment: Qt.AlignCenter
      color: "red"
    }
    LED {
      width: 50; height: 50
      Layout.alignment: Qt.AlignCenter
      color: "red"
    }

  }

}
