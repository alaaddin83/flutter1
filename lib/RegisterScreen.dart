import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _RegisterScreen();
  }


}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("صفحة الادارة"),
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

        color: Colors.black12,

        child: Center(
          child: new Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 50)),

              SizedBox(
                child: new TextField(
                  decoration: InputDecoration(
                      hintText: " E_mail ",
                      icon: new Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                width: 350,
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                child: new TextField(
                  decoration: InputDecoration(
                      hintText: " Password",
                      icon: new Icon(Icons.security),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                width: 350,
              ),

              Padding(padding: EdgeInsets.only(top: 20)),


            ],
          ),
        ),

      ),

    );
  }

}
