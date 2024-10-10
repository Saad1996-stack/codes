//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main ()
{
  runApp((richtextclassone()));
}
class richtextclassone extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Development",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: richtextclasstwo(),
    );
  }
}

class richtextclasstwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>richtextclassthree();
}

class richtextclassthree extends State<richtextclasstwo>
{
  var count = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: Icon(Icons.menu,color:Colors.white,size: 40,),
        actions: [IconButton(onPressed: (){print("logout");}, icon: Icon(Icons.logout,size: 40,color: Colors.white,))],
        title: Text("RichText Widget"),
        backgroundColor: Colors.lightGreen,
      ),


     // body: Center(
     //   child: Column(
     //     mainAxisAlignment: MainAxisAlignment.center,
     //     children: [
     //       RichText(
     //         text: TextSpan(
     //           style: TextStyle(fontSize: 20,color: Colors.blue),
     //           children: [
     //             TextSpan(text: "Hello "),
     //             TextSpan(text: "Mr Khan ,",style: TextStyle(fontFamily: "Customizedfont",color: Colors.purpleAccent,fontSize: 60)),
     //           ],
     //         ),
     //       ),
     //       SizedBox(
     //         height: 1,
     //       ),
     //       RichText(
     //           text: TextSpan(
     //             style: TextStyle(fontSize: 20),
     //            children: [
     //              TextSpan(text: "Welcome to "),
     //              TextSpan(text: "Flutter in Dart language"),
     //            ],
     //       )
     //       ),
     //      ],
     //   ),
     // ),




      //Icon Class

      // body:Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Icon(Icons.play_arrow_rounded,color: Colors.white,size: 50,),
      //       FaIcon(FontAwesomeIcons.amazon,color: Colors.white,size: 50,),
      //         ],
      //       )
      //   ),


      //POSITIONED WIDGETS
      //StateFul Widgets Counter Logic

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:  Colors.blue,

        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              right: 0,


              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
            ),

            Positioned(
              right:7,
              bottom: 15,
              child: Container(
                width: 170,
                height: 170,
                color: Colors.brown,
              ),
            ),

            Positioned(
              right: 10,
              bottom: 20,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),




            Column(
              children: [
                Text("Counter:$count"),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });
                  count++;
                  print(count);

                }, child: Text("Increament Count")),
              ],
            ),

          ],
        ),
      ),





    );
  }
}