import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Graph extends StatefulWidget {
  final Widget child;

  Graph({Key key, this.child}) : super(key: key);

  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<charts.Series<pointPlot, int>> _seriesLineData;

  _generateData() {
    int points = 20;
    int weight = 75;
    int days1 = 25;
    int days2 = 31;
    var linepointPlotdata = [
      new pointPlot(0, 21),
      new pointPlot(4, points),
      new pointPlot(8, 30),
      new pointPlot(12, 35),
      new pointPlot(16, 40),
      new pointPlot(20, 45),
      new pointPlot(22, 50),
      new pointPlot(24, 55),
      new pointPlot(28, 57),
      new pointPlot(31, 61),
    ];
    var linepointPlotdata1 = [
      new pointPlot(1, 24),
      new pointPlot(6, 35),
      new pointPlot(11, 32),
      new pointPlot(16, 45),
      new pointPlot(21, 48),
      new pointPlot(26, 50),
      new pointPlot(31, 54),
    ];



    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.purple),
        displayName: 'Streak',
        id: 'Streak',
        data: (linepointPlotdata),
        domainFn: (pointPlot pointPlot, _) => pointPlot.daycount,
        measureFn: (pointPlot pointPlot, _) => pointPlot.pointPlotval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.green),
        displayName: 'Weight',
        id: 'Weight Loss/Gain',
        data: linepointPlotdata1,
        domainFn: (pointPlot pointPlot, _) => pointPlot.daycount,
        measureFn: (pointPlot pointPlot, _) => pointPlot.pointPlotval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: deprecated_member_use
    _seriesLineData = List<charts.Series<pointPlot, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Progress Report',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'Points / Day Graph',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Weight / Day Graph',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Expanded(
                    child: charts.LineChart(
                        _seriesLineData,
                        animate: true,
                        animationDuration: Duration(seconds: 1),
                        behaviors: [
                          new charts.ChartTitle('Days',
                              behaviorPosition: charts.BehaviorPosition.bottom,
                              titleOutsideJustification:charts.OutsideJustification.middle),
                          new charts.ChartTitle('Points', subTitle: '(FitPoints)',
                              behaviorPosition: charts.BehaviorPosition.start,
                              titleOutsideJustification:charts.OutsideJustification.middle),
                          new charts.ChartTitle('Weight', subTitle: '(KG)',
                              behaviorPosition: charts.BehaviorPosition.end,
                              titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class pointPlot {
  int daycount;
  int pointPlotval;

  pointPlot(this.daycount, this.pointPlotval);
}