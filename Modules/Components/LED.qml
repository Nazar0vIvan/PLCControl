import QtQuick 2.15
import AppStyles 1.0
import QtQuick.Layouts
import QtQuick.Controls

Item {
  id: control

  property alias width: led.width
  property alias height: led.height
  property alias color: led.color
  property alias buttonText: txt.text
  property alias labelText: txt.text

  ColumnLayout {
    id: layout

    Rectangle {
      id: led

      Layout.alignment: Qt.AlignHCenter
      height: 100
      width: 100
      color: "green"
      radius: 0.5*led.width
      border{ width: 1; color: Styles.foreground.high }

      Text {
        id: label
        anchors.centerIn: parent

      }
    }

    Button {
      id: button

      Layout.alignment: Qt.AlignHCenter

    }
  }





}
