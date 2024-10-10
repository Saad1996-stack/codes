import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp((sizeboxclassone()));
}
class sizeboxclassone extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: sizeboxclasstwo(),
    );
  }
}

class sizeboxclasstwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>sizeboxclassthree();

}
class sizeboxclassthree extends State
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    // backgroundColor: Colors.green,
     appBar: AppBar(
       title: Text("SizedBox",style: TextStyle(color: Colors.white)),
       backgroundColor: Colors.lightGreen,
     ),
     // body: ConstrainedBox(
     //   constraints: BoxConstraints(
     //     maxHeight: 60,
     //     maxWidth: 300,
     //      minHeight: 50,
     //      minWidth: 300,
     //   ),
     //   child: SizedBox.shrink(
     //
     //       child: ElevatedButton(
     //         child: Text("Click me",style: TextStyle(color: Colors.black),),
     //         onPressed: ()
     //         {
     //           print("Click me this button");
     //         },
     //        style: ElevatedButton.styleFrom(
     //          backgroundColor: Colors.orange
     //        ),
     //       ),
     //     ),
     // ),



     body: Wrap(
       direction: Axis.vertical,
       children: [
         SizedBox.square(
           dimension: 150,
           child: ElevatedButton(
             child: Text("Click on me"),
             onPressed: ()
             {

             },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.orange
             ),
           ),
         ),

         SizedBox(
           height: 10,
         ),

         SizedBox.square(
           dimension: 150,
           child: ElevatedButton(
             child: Text("Click on me"),
             onPressed: ()
             {

             },
             style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.orange,
               ),
               ),
             ),
       ],
     ),

   );
  }

}