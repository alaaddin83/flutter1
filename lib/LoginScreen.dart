import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginScreen();
  }


}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("صفحة تسجيل الدخول"),
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

      color: Colors.greenAccent,

      child: Center(
        child: new Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50)),

            SizedBox(
              child: new TextField(
                decoration: InputDecoration(
                    hintText: "Username or E_mail",
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
            new RaisedButton(
              onPressed: () {
                print("hello");
              },
              color: Colors.teal,
              child: new Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),

            new Text("Forget pass ?"),
            Padding(padding: EdgeInsets.only(top: 30)),

            new Text("حتى تستطيع الدخول لصفحة المتدرب يجب ان تكون من المقبولين في المعهد."
                "يرجى التحقق من الايميل الخاص بك.في حال كنت من المقبولين في "
                "المعهد ستصلك رسالة تبين الرقم التعريفي الخاص بك واسم المستخدم"),


          ],
        ),
      ),

    ),

    );
  }

}
