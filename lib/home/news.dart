import 'package:flutter/material.dart';

class News extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NewsState();

}

class NewsState extends State<News>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, top: 10),
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: buildItemListNews,
                itemCount: 3,
                ),
                height: 250,

            ),
            Container(
              padding: EdgeInsets.only(left: 24, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    color: Colors.yellow,
                    child: Text("TEAM", style:TextStyle(fontFamily:'Oswald', color: Colors.black, fontSize: 16)),
                  ),
                  Container(
                     padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    child: Text("CLUB", style:TextStyle(fontFamily:'Oswald', color: Colors.white, fontSize: 16)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    child: Text("YOUTH", style:TextStyle(fontFamily:'Oswald', color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ),

            Container(
              child: ListView.builder(
                itemBuilder: buildItemListNewsVertical,
                itemCount: 5,
                shrinkWrap: true,
              ),
            )
          ],
        )
      ),
    );
  }

  Widget buildItemListNewsVertical(BuildContext context, int position){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 24, right: 16, top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 105,
                height: 70,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    child:
                         Text("Douglas Costa: \"We make the difference in the key moments\"",  overflow: TextOverflow.ellipsis, maxLines:2, style:TextStyle(fontFamily:'Oswald', color: Colors.white, fontSize: 16))
                  ),
                  Padding(padding:EdgeInsets.only(left:10), child:Text("WEDNESDAY, 31 Oct 2018", style:TextStyle(fontFamily:'Oswald', color: Colors.white24, fontSize: 12))
                  )
                ],
              )
            ],
          ),
          Container(
              padding: EdgeInsets.only(top: 10),
              height: 70,
              child:
                    Text("Comments from the coach, Pjanic and Bentancur as they speak to the media at adidas 'Here To Create' event in Milan",  overflow: TextOverflow.ellipsis, maxLines:3, style:TextStyle(fontFamily:'Oswald', color: Colors.white54, fontSize: 13))
            )
        ],
      ),

    );

  }

  Widget buildItemListNews(BuildContext context, int position){
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.only(left: 14, right: 14),
        child:Column(children: <Widget>[
          Container(height: 170, color: Colors.white,),
          Text("Chiellini praises Juve composure despite dropped points", overflow: TextOverflow.ellipsis, maxLines:2, style:TextStyle(fontFamily:'Oswald', color: Colors.white, fontSize: 22))
        ]
      )
    );
  }

}

class ListSlider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

}