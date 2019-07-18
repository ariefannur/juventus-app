import 'package:flutter/material.dart';
import 'package:juventus_app/home/detail_player.dart';
import 'package:juventus_app/model/player.dart';

class HomeTeam extends StatefulWidget{

  @override
  _HomeTeamState createState() => _HomeTeamState();
}

class _HomeTeamState extends State<HomeTeam> {
  List<Player> listDefender = [
    Player(name:"",lastname: "Barzagli", number: "3", img: "assets/players/Barzagli.png", imgSide: "assets/players/Barzagli-side.png", position: Position.DEFENDER),
    Player(name: "", lastname:"Chiellini", number: "5", img: "assets/players/Chiellini.png", imgSide: "assets/players/Chiellini-side.png", position: Position.DEFENDER),
    Player(name: "Mehdi", lastname:"Benatia", number: "2", img: "assets/players/Benatia.png", imgSide: "assets/players/Benatia-side.png", position: Position.DEFENDER),
    Player(name: "", lastname:"Bentancur", number: "6", img: "assets/players/Bentancur.png", imgSide: "assets/players/Bentancur-side.png", position: Position.DEFENDER),
  ];

  List<Player> listMidfield = [
    Player(name: "Diego", lastname: "Costa", number: "11", img: "assets/players/Costa.png", imgSide: "assets/players/Costa-side.png", position: Position.MIDFIELDER),
    Player(name: "Juan", lastname:"Cuadrado", number: "17", img: "assets/players/Cuadrado.png", imgSide: "assets/players/Cuadrado-side.png", position: Position.MIDFIELDER),
    Player(name: "Emre", lastname: "Can", number: "23", img: "assets/players/EmreCan.png", imgSide: "assets/players/EmreCan-side.png", position: Position.MIDFIELDER),
    Player(name: "B", lastname:"Matuidi", number: "11", img: "assets/players/Matuidi.png", imgSide: "assets/players/Matuidi-side.png", position: Position.MIDFIELDER),
  ];

  List<Player> listForward= [
    Player(name: "Cristiano", lastname: "Ronaldo", number: "7", img: "assets/players/Ronaldo.png", imgSide: "assets/players/Ronaldo-side.png", position: Position.FORWARD),
    Player(name: "Paulo", lastname: "Dybala", number: "9", img: "assets/players/Dybala.png", imgSide: "assets/players/Dybala-side.png", position: Position.FORWARD),
    Player(name: "Mario",lastname:"Mandzukic", number: "10", img: "assets/players/Mandzukic.png", imgSide: "assets/players/Mandzukic-side.png", position: Position.FORWARD),
    Player(name: "Mosa", lastname:"Kean", number: "43", img: "assets/players/Kean.png", imgSide: "assets/players/Kean-side.png", position: Position.FORWARD),
  ];

  List<Player> listKeeper= [
    Player(name: "W", lastname:"Szczesny", number: "7", img: "assets/players/Szczesny.png", imgSide: "assets/players/Szczesny-side.png", position: Position.KEEPER),
    Player(name: "Matia", lastname:"Perin", number: "9", img: "assets/players/Perin.png", imgSide: "assets/players/Perin-side.png", position: Position.KEEPER),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
  
      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
      color: Colors.black,
      child: ListView(
        children: <Widget>[ 
          Container( padding: EdgeInsets.only(bottom:24),
            width: MediaQuery.of(context).size.width,
            height: 200, 
            child:
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(right: 16),
                  child:RotatedBox(
                  quarterTurns: -1,
                  child:Text("FORWARD", style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:40))
                  )
                ),
                 Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listForward.length,
                    itemBuilder: (BuildContext context, int pos){
                      return GestureDetector(
                        child:  ItemPlayer(player: listForward[pos],),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPlayer(player: listForward[pos],)),
                          );
                        },
                      );
                      
                     
                    }, 
                    
                    
                ),
              ) 
              ]
            )
          ),
          Container( padding: EdgeInsets.only(bottom:24),
            width: MediaQuery.of(context).size.width,
            height: 200, 
            child:
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(right: 16),
                  child:RotatedBox(
                  quarterTurns: -1,
                  child:Text("MIDFILDER", style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:40))
                  )
                ),
                 Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listMidfield.length,
                    itemBuilder: (BuildContext context, int pos){
                      return GestureDetector(
                        child:  ItemPlayer(player: listMidfield[pos],),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPlayer(player: listMidfield[pos])),
                          );
                        },
                      );
                    },
                ),
              ) 
              ]
            )
          ),

          Container( padding: EdgeInsets.only(bottom:24),
            width: MediaQuery.of(context).size.width,
            height: 200, 
            child:
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(right: 16),
                  child:RotatedBox(
                  quarterTurns: -1,
                  child:Text("DEFFENDER", style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:40))
                  )
                ),
                 Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listDefender.length,
                    itemBuilder: (BuildContext context, int pos){
                      return GestureDetector(
                        child:  ItemPlayer(player: listDefender[pos],),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPlayer(player: listDefender[pos])),
                          );
                        },
                      );
                    },
                ),
              ) 
              ]
            )
          ),

          Container( padding: EdgeInsets.only(bottom:24),
            width: MediaQuery.of(context).size.width,
            height: 200, 
            child:
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(right: 16),
                  child:RotatedBox(
                  quarterTurns: -1,
                  child:Text("KEEPER", style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:40))
                  )
                ),
                 Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listKeeper.length,
                    itemBuilder: (BuildContext context, int pos){
                      return GestureDetector(
                        child:  ItemPlayer(player: listKeeper[pos],),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPlayer(player: listKeeper[pos])),
                          );
                        },
                      );
                    },
                ),
              ) 
              ]
            )
          ),

        ],
      ),
    );
  }
}

class ItemPlayer extends StatelessWidget{
  final Player player;
  ItemPlayer({this.player});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Stack(
        children: <Widget>[
          Text(player.number, style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:55)),
          Image.asset(player.img, width: 120, height: 170,),
          Positioned(
            bottom: 0.0,
            child: 
            Container(
              width: 150,
              child:Text(player.name+" "+player.lastname, textAlign: TextAlign.center ,style:TextStyle(background: Paint()..color = Colors.black54,fontFamily:'Oswald', color:Colors.white, fontSize:20)),
            ),
            
          )
        ],
      ),
    );
  }

}