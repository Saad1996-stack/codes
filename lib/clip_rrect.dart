import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(clip_rrect());
}
class clip_rrect extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "flutter Development",
      home: clips_rrect(),
    );
  }
}
class clips_rrect extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip RRect"),
      ),
      body: Center(

        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(60), topLeft: Radius.circular(100)),
          child:Image.asset("assets/images/dartlogo.jpg",width: 400,height: 200,fit: BoxFit.fill),
        ),
      ),

    );
  }
}