import QtQuick 2.0
import QtQuick.Controls 2.15


// khởi tạo số giá trị task
Dialog {
    id: dialog
    title: 'Number of tasks: '
    standardButtons: Dialog.Ok

    property alias value: sb.value

    SpinBox {
        id: sb
        from: 1
        to: 4
        value: 3
    }

}
