import QtQuick 2.12
import QtQuick.Window 2.12

import QuickQanava      2.0 as Qan
import "qrc:/QuickQanava" as Qan

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Qan.GraphView {
        id: graphView
        anchors.fill: parent

        graph: Qan.Graph {
            id: graph
            connectorEnabled: true
            Component.onCompleted: {
                var n11 = graph.insertNode()
                n11.label = "N11"; n11.item.x = 50; n11.item.y = 50

                var n2 = graph.insertNode()
                n2.label = "N2"; n2.item.x = 250; n2.item.y = 100

                var n2p1 = graph.insertPort(n2, Qan.NodeItem.Left);
                n2p1.label = "IN #1"
                var n2p2 = graph.insertPort(n2, Qan.NodeItem.Left);
                n2p2.label = "IN #2"

                var n2p3 = graph.insertPort(n2, Qan.NodeItem.Right);
                n2p3.label = "OUT #1"

                var n3 = graph.insertNode()
                n3.label = "N3"; n3.item.x = 500; n3.item.y = 100
                var n3p1 = graph.insertPort(n3, Qan.NodeItem.Left);
                n3p1.label = "IN #1"

                var e1 = graph.insertEdge(n11, n2);
                var e2 = graph.insertEdge(n12, n2);
                graph.bindEdgeDestination(e1, n2p1)
                graph.bindEdgeDestination(e2, n2p2)


                graph.setConnectorSource(n2)
            }
        }
    }
}