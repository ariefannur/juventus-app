import 'package:flutter/material.dart';
import 'package:juventus_app/home/home.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';


class DetailPlayer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DetailPlayerState();

}

class DetailPlayerState extends State<DetailPlayer>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: TitleBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16, left: 20, right: 16, bottom: 16),
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding:EdgeInsets.only(left: 8, right: 8), child:Text("SERIE A", style:TextStyle(color:Colors.white, fontFamily:'Oswald', fontSize: 20))),
                Padding(padding:EdgeInsets.only(left: 8, right: 8), child:Text("UCL", style:TextStyle(color:Colors.white24, fontFamily:'Oswald', fontSize: 20))),
                Padding(padding:EdgeInsets.only(left: 8, right: 8), child:Text("COPPA ITALIA", style:TextStyle(color:Colors.white24, fontFamily:'Oswald', fontSize: 20))),
                Padding(padding:EdgeInsets.only(left: 8, right: 8), child:Text("SUPER CUP", style:TextStyle(color:Colors.white24, fontFamily:'Oswald', fontSize: 20)))
              ],
              ),
              Expanded(
              child:ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Text("7",  style:TextStyle(color:Colors.white24, fontFamily:'Juventus', fontSize: 80)),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text("Cristiano",  style:TextStyle(color:Colors.white, fontSize: 35)),
                            Text("Ronaldo",  style:TextStyle(color:Colors.white, fontSize: 35)),
                            Text("Forward",  style:TextStyle(color:Colors.yellow, fontSize: 24)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                Text("19",  style:TextStyle(color:Colors.white, fontSize: 30)),
                                Padding(padding:EdgeInsets.only(top: 8, left: 5), child:
                                Text("GOAL",  style:TextStyle(color:Colors.grey,fontFamily: 'Oswald', fontSize: 15))
                                )
                              ]
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                Text("64",  style:TextStyle(color:Colors.white, fontSize: 30)),
                                Padding(padding:EdgeInsets.only(top: 8, left: 5), child:
                                Text("SHOT ON TARGET",  style:TextStyle(color:Colors.grey,fontFamily: 'Oswald', fontSize: 15))
                                )
                              ]
                            ),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                Text("2,239",  style:TextStyle(color:Colors.white, fontSize: 30)),
                                Text("MINUTE PLAYED",  style:TextStyle(color:Colors.grey,fontFamily: 'Oswald', fontSize: 15))
                              
                              ]
                            ),
                            
                            
                        ],
                      )
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(padding: EdgeInsets.only(top: 16, left: 20), child:
                          Image.asset("assets/players/ronaldo-side.png", width: 300, height: 350,)
                        )
                      )
     
                    ],
                  ),
                   Padding(padding: EdgeInsets.only(top:16),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, ),
                      color: Colors.yellow,
                      child:Text("DEFENCE",  style:TextStyle(color:Colors.black,fontFamily: 'Oswald', fontSize: 20)),
                    ),
                    Text("DISTRIBUTION",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                    Text("ATTACK",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                    Text("DISCIPLINE",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                  ],
                )
            ),
            Container(
              height: 3,
              color: Colors.yellow,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ItemStatistik(),
                ItemStatistik(),
                ItemStatistik()
              ],
            )
          ],
          )
          ),
           
          ],
        ),
      ),
    );
  }

}

class ItemStatistik extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StateItemStatistik();

}

class StateItemStatistik extends State<ItemStatistik>{

  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(100.0, 100.0);

  double value = 70;
  Color labelColor = Colors.yellow;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("25", style: TextStyle(color: Colors.yellow, fontSize: 16),),
          Padding(padding: EdgeInsets.only(top: 6, bottom: 8), child:Text("Clearances", style: TextStyle(fontFamily: 'Oswald', color: Colors.white24, fontSize: 16))),
          Text("Tackles", style: TextStyle(fontFamily: 'Oswald', color: Colors.white, fontSize: 16),),

          new Container(
            child: AnimatedCircularChart(
              key: _chartKey,
              size: _chartSize,
              initialChartData: _generateChartData(value),
              chartType: CircularChartType.Radial,
              edgeStyle: SegmentEdgeStyle.round,
              percentageValues: true,
              holeLabel: '$value',
              labelStyle: Theme
        .of(context)
        .textTheme
        .title
        .merge(new TextStyle(color: labelColor)),
            ),
          )
        ],
      )
    );
  }

   List<CircularStackEntry> _generateChartData(double value) {
    Color dialColor = Colors.yellow;
    if (value < 0) {
      dialColor = Colors.red[200];
    } else if (value < 50) {
      dialColor = Colors.yellow[200];
    }
    labelColor = dialColor;

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value,
            dialColor,
            rankKey: 'percentage',
          )
        ],
        rankKey: 'percentage',
      ),
    ];

    if (value > 100) {
      labelColor = Colors.green[200];

      data.add(new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value - 100,
            Colors.green[200],
            rankKey: 'percentage',
          ),
        ],
        rankKey: 'percentage2',
      ));
    }

    return data;
  }

}