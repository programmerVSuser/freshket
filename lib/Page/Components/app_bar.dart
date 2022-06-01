import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../Admin-page/login-admin-page.dart';
import 'about-page.dart';
import 'constant.dart';
import 'get-started.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size SIZE = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Image.asset(
              "image/unnamed.png",
              height: 50,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(width: 5),
          //Text("Freshket".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) =>  about()));
            },
            child: Container(
              child: Expanded(child: AutoSizeText("About",style: TextStyle(color: Colors.grey[500],fontSize: 18),)),
            ),
          ),
          SizedBox(width: 25,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) =>  Constans()));
            },
            child: Container(
              child: Expanded(child: AutoSizeText("Contact",style: TextStyle(color: Colors.grey[500],fontSize: 18),)),
            ),
          ),
          SizedBox(width: 25,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) =>  Logoin()));
            },
            child: Container(
              child: Expanded(child: AutoSizeText("Login",style: TextStyle(color: Colors.grey[500],fontSize: 18),)),
            ),
          ),
          SizedBox(width: 25,),
          Container(
            width: SIZE.width * 0.1,
            height: 40,
            child: ElevatedButton(
              child: Expanded(child: AutoSizeText("Get Started",style: TextStyle(color: Colors.white,fontSize: 18),)),
              onPressed: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (BuildContext context) =>  Get_Started()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[600],
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
