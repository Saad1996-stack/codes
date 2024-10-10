import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main ()
{
  runApp(wrap_widgt());
}
class wrap_widgt extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Flutter & Dart",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: wrap_widgt_two(),
    );
  }
}
class wrap_widgt_two extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => wrap_widgt_three();
}
class wrap_widgt_three extends State {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap_widget"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
      ),
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Wrap(
      //     direction: Axis.vertical,
      //     alignment: WrapAlignment.center,
      //     spacing: 20,
      //     runSpacing: 20,
      //     children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.brown,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.black,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.orange,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.purpleAccent,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.pink,
      //       ),
      //
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.lightGreen,
      //       ),
      //     ],
      //   ),
      // ),



      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.lightGreen,
              width: 60,
              height: 60 ,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.pink,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.yellow,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.green,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.red,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.black,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.orange,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.green,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.indigo,
            ),



            Container(
              width: 60,
              height: 60,
              color: Colors.indigo,
            ),



            Container(
              width: 60,
              height: 60,
              color: Colors.indigo,
            ),
          ],
        ),
      ),

    );
  }
}

