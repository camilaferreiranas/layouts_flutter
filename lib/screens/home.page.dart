import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/app-logo.png"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/user-picture.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.search,
                color: Color(0xFFFBABABA),
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage("https://img.ibxk.com.br/materias/5866/21577.jpg"),
          ),
          title: Text("Bruce Wayne"),
          subtitle: Text("24/11/2020 07:16"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Lorem ipsum dolor sit amet, consectetur"),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Icon(Icons.favorite)),
              FlatButton(onPressed: () {}, child: Icon(Icons.share))
            ],
          ),
        )
      ],
    ),
  );
}
