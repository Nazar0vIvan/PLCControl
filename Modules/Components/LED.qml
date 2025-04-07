import QtQuick 2.15
import AppStyles 1.0
import QtQuick.Layouts


Rectangle {
  id: control

  property alias labelText: label.text

  radius: implicitWidth / 2
  border{ width: 1; color: Styles.foreground.high }

  Text {
    id: label
    anchors.centerIn: parent
  }
}
