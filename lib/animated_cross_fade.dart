import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp((animate_cross_fade()));
}
class animate_cross_fade extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Flutter Development",
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: animate_cross_fade_one(),
    );
  }
}
class animate_cross_fade_one extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>animate_cross_fade_two();
}
class animate_cross_fade_two extends State
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 4),(){
    //   reload();
    // });

  }

  void reload()
  {
    setState(() {
      if(isfirst) {
        isfirst = false;
      }
      else
      {
        isfirst = true;
      }
    });
  }

  bool isfirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
              secondChild: Image.asset("assets/images/boy.png", width: 100,height: 100),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isfirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              child: Text("Show"),
              onPressed: ()
              {
                reload();
              },
            ),
          ],
        ),
      ),
    );
  }

}