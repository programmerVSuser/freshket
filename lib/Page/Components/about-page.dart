import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Widget1(context),
          ],
        ),
      ),
    );
  }
}
Widget Widget1 (context){
  final List<Container> elements = [Container(height:50,width:50,color: Colors.green[800],),Container(color: Colors.green,)];
  return Container(
    child:GridView.builder(
        itemCount: elements.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500.0,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemBuilder: (context, i) => Container(
            child: Center(
                child:
                Padding(padding: EdgeInsets.all(0.0), child: elements[i])))),
  );
}