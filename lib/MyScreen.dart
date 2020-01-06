import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyScreen();

  }
}

class _MyScreen extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("معهد الفيحاء المهني"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new Icon(Icons.share),
          new SizedBox(
            width: 20,
          )
        ],
      ),
      body: new Container(
        width: MediaQuery.of(context)
            .size
            .width, //حتى تتلائم العناصر مع جميع الشاشات
        color: Colors.greenAccent,
        child: new Column(
          children: <Widget>[
            Image(image: AssetImage("Assets/image/image_starter.jpg"),
              width: 400,
              fit: BoxFit.fitWidth,
            ),
            Padding(padding: EdgeInsets.only(top: 15)),

            new Text(
              " مرحباً بكم في تطبيق معهد الفيحاء المهني",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            SizedBox(
              child: new RaisedButton(
                onPressed: () {
                  print("hello");
                },
                color: Colors.teal,
                child: new Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              width: 300,
            ),

            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              child:new RaisedButton(
                onPressed: () {
                  print("hello");
                },
                color: Colors.teal,
                child: new Text(
                  "عن المعهد",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              width: 300,
            ),

            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              child: new RaisedButton(
                onPressed: () {
                  print("hello");
                },
                color: Colors.teal,
                child: new Text(
                  "الدورات المتوفرة",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              width: 300,
            ),

          ],
        ),
      ),
    );
  }
}
