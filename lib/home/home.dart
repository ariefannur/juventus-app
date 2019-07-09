import 'package:flutter/material.dart';
import 'package:juventus_app/home/home_team.dart';
import 'package:juventus_app/home/news.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleBar(),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: "HOME"),
            Tab(text: "NEWS"),
            Tab(text: "LIVE"),
            Tab(text: "STATISTIK"),
          ],
        ),

      ),
      body: TabBarView(
        children: <Widget>[
            HomeTeam(),
            News(),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
        ],
      ),
    );
  }

}

class TitleBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
          child:Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("JUVENTUS", style:TextStyle(fontFamily:'Juventus',fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30)),
              Padding(padding:EdgeInsets.only(top:4, left: 3), child:Text("TEAM", style:TextStyle(fontFamily:'Oswald', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 24)))

            ],
          )
        );
  }

}