import 'package:flutter/material.dart';
import 'home-page.dart';

class Spash extends StatefulWidget {
  Spash({Key? key}) : super(key: key);

  @override
  _SpashState createState() => _SpashState();
}

class _SpashState extends State<Spash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size B = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 200),
                  width: B.width * 0.8,
                  child: Expanded(
                    child: Column(children: <Widget>[
                      Container(
                          height: 200,
                          width: 200,
                          child: new Image(
                              image:
                              new AssetImage('image/unnamed.png'))),
                      Text("TEAM CASHIER LKB",
                        style: TextStyle(color: Colors.red, fontSize: 30,fontWeight: FontWeight.w600),
                        //style: TextStyle(fontSize: 18),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
