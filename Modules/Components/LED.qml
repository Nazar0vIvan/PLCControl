import QtQuick 2.15
import AppStyles 1.0
import QtQuick.Layouts


Rectangle {
  id: control

  property alias labelText: label.text

  Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
  height: 100
  width: 100
  radius: 0.5*width
  border{ width: 1; color: Styles.foreground.high }
  opacity: button.checked ? 1.0 : 0.8

  Text {
    id: label
    anchors.centerIn: parent
  }
}
