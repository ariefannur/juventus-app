import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Live extends StatefulWidget{
  final LiveType liveType;
  Live({this.liveType});

  @override
  State<StatefulWidget> createState() => LiveState();

}

enum LiveType{
  LIVE_SCORE,
  STATISTIK
}

class Progress{
  final double prcentA;
  final double prcentB;
  final String title;
  Progress({this.prcentA, this.prcentB, this.title});
}


class LiveState extends State<Live>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            scoreTop(),
            tabScore(),
            posession(Progress(prcentA: 50.9, prcentB: 49.1, title: "Posession")),
            widget.liveType == LiveType.LIVE_SCORE ? timelineScore() : timelineStatistik()

          ],
        )
      )
    );
  }

  Widget tabScore(){
    return Column(
            children: <Widget>[
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, ),
                      color: Colors.yellow,
                      child:Text("LIVE TICKER",  style:TextStyle(color:Colors.black,fontFamily: 'Oswald', fontSize: 20)),
                    ),
                    Text("LINE UP",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                    Text("TACTICAL",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                    Text("LIVE TABLE",  style:TextStyle(color:Colors.white,fontFamily: 'Oswald', fontSize: 20)),
                  ],
                ),
            
            Container(
              height: 3,
              color: Colors.yellow,
            )
            ]);
  }

  Widget score(){
    return Column(
      children: <Widget>[
        Text("1 : 0", style: TextStyle(fontFamily: "Oswald", fontSize: 30, color: Colors.white),),
        Padding(child:
        Text("70'", style: TextStyle(fontFamily: "Oswald", fontSize: 18, color: Colors.white24),),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        ),
        
      ],
    );
  }

  Widget posession(Progress progress){
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child:Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
            Text(progress.prcentA.toString()+"%", style:TextStyle(color:Colors.white, fontFamily:'Oswald',fontSize: 16)),
            Text(progress.title, style:TextStyle(color:Colors.white, fontFamily:'Oswald', fontSize: 16)),
            Text(progress.prcentB.toString()+"%", style:TextStyle(color:Colors.white, fontFamily:'Oswald', fontSize: 16)),
           ]
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 8),
        child:Stack(
          children: <Widget>[
            Container(
              height: 20,
              color: Colors.white24,
            ),
            Align(
              alignment: Alignment.center,
              child:Container(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.yellow,
            )
            )
          ],
        )
        )
      ],
      )
    );
  }

  Widget timelineStatistik(){
    return Column(
      children: <Widget>[

         posession(Progress(prcentA: 50.9, prcentB: 49.1, title: "Posession")),
          posession(Progress(prcentA: 50.9, prcentB: 49.1, title: "Posession")),
           posession(Progress(prcentA: 50.9, prcentB: 49.1, title: "Posession")),
            posession(Progress(prcentA: 50.9, prcentB: 49.1, title: "Posession")),
      ],
    );
  }

  Widget timelineScore(){
    return Column(
      children: <Widget>[
        itemTimeline(true, 55, "A great cross by Cancelo from the left finds..."),
        itemTimeline(false, 66, "Goal!!, by Mandzukic"),
        itemTimeline(true, 70, "Bentancur lets fly with an effort outside the box..."),
        itemTimeline(false, 80, "CLOSE! Ronaldo's strike from distance flies just... over the crossbar"),
        
      ],
    );
  }

  Widget dotLine(){
    return 
    Flexible(
      flex: 2,
      child:Stack(
      alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child:Container(
              width: 3,
              color: Colors.green,
            )
            ),
            Align(
              alignment: Alignment.topCenter,
            child:Container(
                height: 15,
                width: 15,
                decoration: new BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 0.0),
                  borderRadius: new BorderRadius.all(Radius.elliptical(50, 50)),
                ),
                child: Text('     '),
              )
            )
          ]
      )
          );
  }

  Widget itemTimeline(bool isRight, int time, String text){
    return Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
              child:Container(
                color: Colors.black ,
                child: !isRight ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                      Padding(padding:EdgeInsets.only(left: 16),child:Text(time.toString()+"' \n"+text, textAlign: TextAlign.right, style:TextStyle(color:Colors.white))),
                    
                  ],
                ): Row(),
              ),flex: 15,
              )
              ,
             dotLine(),
              Expanded(
              child:Container(
                color: Colors.black,
                child: isRight ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                      Padding(padding:EdgeInsets.only(right: 16),child:Text(time.toString()+"' \n"+text, textAlign: TextAlign.right, style:TextStyle(color:Colors.white))),
                    
                  ],
                      
                ): Row(),
              ), flex: 15,
              ),
            ],
          )
          
          
        );
  }

  Widget scoreTop(){
    return Column(
      children: <Widget>[
        Text("SERIE A", style: TextStyle(color: Colors.white, fontFamily: 'Oswald', fontSize: 18)),
        Text("Matchday 15, Friday 07 Dec. 2018, Allianz Stadium", style: TextStyle(color: Colors.white24, fontSize: 14)),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 24),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Team(
                imgLogo: "assets/logo/juve-logo.png",
                teamName: "JUVENTUS",
              ),

              score(),

              Team(
                imgLogo: "assets/logo/bayer-logo.png",
                teamName: "BAYER MUNCHEN",
              ),

            ],
          )
        )

      ],
    );
  }

}

class Team extends StatelessWidget{
  final String imgLogo;
  final String teamName;
  Team({this.imgLogo, this.teamName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(imgLogo, width: 100, height: 100,),
        Text(teamName, style: TextStyle(fontFamily: 'Oswald', fontSize: 20, color: Colors.white24),)
      ],
    );
  }

}