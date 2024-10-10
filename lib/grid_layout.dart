import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(gridsclassone());
}
class gridsclassone extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Grid View",
        theme: ThemeData(
          primarySwatch: Colors.lightGreen
        ),
        home: gridclasstwo(),
      );
  }
}

class gridclasstwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => gridclassthree();
}

class gridclassthree extends State<gridclasstwo>
{
  var newcolor = [Colors.cyan,
  Colors.indigo,
    Colors.redAccent,
    Colors.blue,
    Colors.lightGreen,
    Colors.black12,
    Colors.grey,
    Colors.cyanAccent]; 

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logout))
          ],
          title: Text('Grid Layout'),
        ),


      //GridView.Count

      //  body: GridView.count(crossAxisCount: 4,
      //     mainAxisSpacing: 10,
      //    crossAxisSpacing: 10,
      //    children: [
      //      Container(color: newcolor[0],),
      //      Container(color: newcolor[1],),
      //      Container(color: newcolor[2],),
      //      Container(color: newcolor[3],),
      //      Container(color: newcolor[4],),
      //      Container(color: newcolor[5],),
      //      Container(color: newcolor[6],),
      //      Container(color: newcolor[7],),
      //    ],
      // ),

        //GridView.Extend

      // body: GridView.extent(maxCrossAxisExtent: 200,
      // children: [
      //   Container(color: newcolor[0],),
      //   Container(color: newcolor[1],),
      //   Container(color: newcolor[2]),
      //   Container(color: newcolor[3],),
      //   Container(color: newcolor[4],),
      //   Container(color: newcolor[5],),
      //   Container(color: newcolor[6],),
      //   Container(color: newcolor[7],),
      //   ],
      // ),


        //GridView.Builder

        body: GridView.builder(itemBuilder: (context,index)
            {
              return Container(color: newcolor[index],);
            },

          //CrossAxisCount

          // itemCount: newcolor.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   mainAxisSpacing: 10,
          //     crossAxisSpacing: 10,
          // ),


          //MaxCrossAxisExtend

          itemCount: newcolor.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ) ,


        ),


          );




  }
}