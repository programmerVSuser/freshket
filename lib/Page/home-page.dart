
import 'package:flutter/material.dart';
import 'Components/app_bar.dart';
import 'Components/body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          // it will take full width
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/Freshket.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Spacer(),
              Body(),
              Spacer(flex: 2,),
              // it will cover 2/3 of free spaces
            ],
          ),
        ),
      ),
    );
  }
}
