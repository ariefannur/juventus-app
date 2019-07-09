import 'package:flutter/material.dart';
import 'package:juventus_app/home/detail_player.dart';

class HomeTeam extends StatelessWidget{
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
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int pos){
                      return GestureDetector(
                        child:  ItemPlayer(),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPlayer()),
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
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int pos){
                      return ItemPlayer();
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
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int pos){
                      return ItemPlayer();
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
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int pos){
                      return ItemPlayer();
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Stack(
        children: <Widget>[
          Text("12", style:TextStyle(fontFamily:'Juventus', color:Colors.white24, fontSize:55)),
          Image.asset("assets/players/ronaldo.png", width: 120, height: 170,),
          Positioned(
            bottom: 0.0,
            child: Text("Cristiano Ronaldo", style:TextStyle(background: Paint()..color = Colors.black54,fontFamily:'Oswald', color:Colors.white, fontSize:20)),
          )
        ],
      ),
    );
  }

}