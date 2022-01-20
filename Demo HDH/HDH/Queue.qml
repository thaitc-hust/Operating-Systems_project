import QtQuick 2.0

Item {

    property int time
    property var tasks
    property alias title: queueTitle.text
    property var condition

    Text {
        id: queueTitle
    }

    ListView {
        // giao diện các task thực hiện
        anchors.top: queueTitle.bottom
        model: tasks.length
        orientation: Qt.Horizontal
        width: 200
        height: 50


        // giao diện ready, running queue
        delegate: Rectangle {
            width: 50
            height: 50
            opacity: time * 0 + condition(index) ? 1 : 0
            color: tasks[index].color // màu trong ready và runiing giống màu task

            Text {
                anchors.centerIn: parent
                //text: time * 0 + tasks[index].remainTime // tính toán giá trị task trong ready và running queue
            }
        }

        Rectangle { // màu ready queue và running queue
            anchors.fill: parent
            opacity: 0.1
            border {
                color: 'red'
                width: 1
            }
        }
    }
}
