import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(gradient());
}
class gradient extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gradients(),
    );
  }
}

class gradients extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gradient App bar",style: TextStyle(fontWeight: FontWeight.w700),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: [
              Colors.red,
              Colors.green,
              Colors.blue,
            ],
            startAngle: 10,
            endAngle: 20,
            tileMode: TileMode.repeated,
            //radius: 10//Radial Gradient
          ),
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient( //RadialGradient
            colors: [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.black,
              Colors.purple,
              Colors.indigo,
              Colors.pink,
              Colors.amber,
              Colors.pinkAccent,
              Colors.white,
              Colors.brown,
              Colors.tealAccent,
              Colors.deepOrangeAccent,
              Colors.cyan,
              Colors.lightBlue,
              Colors.green,
              Colors.redAccent,
              Colors.blueAccent,
            ],
            startAngle: 1,
            endAngle: 10,
            // begin: FractionalOffset(0.0,0.5),
            // end: FractionalOffset(0.0, 1.0),
            // stops: [0.0, 0.5],
          ),
        ),
      ),
    );
  }

}