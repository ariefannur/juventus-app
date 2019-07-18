class Player{
  final String name;
  String lastname ="";
  final String number;
  final String img;
  final String imgSide;
  Position position;
  Player({this.name, this.lastname,  this.number, this.position, this.img, this.imgSide});
}

enum Position{
  DEFENDER,
  MIDFIELDER,
  FORWARD,
  KEEPER
}