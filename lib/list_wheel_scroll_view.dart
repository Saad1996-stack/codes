import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(list_wheel());
}
class list_wheel extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "FLutter Development",
      home: list_wheels(),
    );
  }
}
class list_wheels extends StatelessWidget
{
  var arrlist = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Wheel Scroll View"),
        ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: arrlist.map((value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.green,
            ),
            child: Text("$value"),
            width: 200,

          ),
        ),
        ).toList(),
      ),
    );
  }
}