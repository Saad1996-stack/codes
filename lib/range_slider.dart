import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(range_slider());
}
class range_slider extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: range_slider_screen(),
    );
  }
}
class range_slider_screen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>range_screen();
}

class range_screen extends State
{
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context)
  {
    RangeLabels labels = RangeLabels(values.start.toString(), values.start.toString());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        ],
        leading: Icon(Icons.menu),
        title: Text("Range Slider"),
      ),
      body: RangeSlider(
        values: values,
        labels: labels,
        divisions: 20,
         activeColor: Colors.lightGreen,
         inactiveColor: Colors.lightGreen[50],
         min: 0,
         max: 100,
        onChanged: (newvalues)
        {
          values = newvalues;
          print("${newvalues.start}, ${newvalues.end}");
          setState(() {

          });
        },
      ),
    );
  }

}