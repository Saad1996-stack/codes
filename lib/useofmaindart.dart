import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// runApp k name se fuction milta hai {(app) bracket} mein apni application ko pass/call krna hai jisko me run krwana cha rha hn.
//class ko call krden gen (app) k andar k bracket mein. FlutterApp ko call kra h mene.
void main()
{
  runApp(FlutterApp());
}

//Flutter k andar sare k sare widgets hote hen. or ye class widgets ki tarah follow ho to is class ko ek predefined class (predefined widget) se extend krana hoga jo k flutter me use me ati hai.

//class keyword lagana hoga us k bad class ka name rakhna hoga eg class FlutterApp--> identifer is name se class ko identify kren gen
//StatelessWidget is k andar 1 abstract function hai jab bh class ko extend krte hen to jis se extend krte hen agar us me abstract function hota hai to us override krna hota hai
//Build function override hoga
//MaterialApp for Android nativeUI
//CupertinoApp for iphone nativeUI

//class FlutterApp extends StatelessWidget ye defined kr rha hai k hamra App kesa starting point kesa hoga, title kesa hoga, theme kya hogi.
//MaterialApp k andar kuch common cheeze ajatai hen jese k title
//primaryswatch se App khud manage krlega k color k jaha light/dark chahye khud manage krle
// sub se phela page kon sa open hoga wo HOME se defined hoga. is ko ek widget chahye . ab is k lye hame ek or class create krni hogi jo hamara page defined kre gi k hamara page kesa dkhega

class FlutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
    title: "FlutterApplication",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashboardScreen(), //yaha par mene DashboardScreen class ko call krdya.
    );
  }

}


//jab me app developed kr rha honga to bht sari files dart create kronga. to us k bh class k identifers banaunga to mixed na hojai names is lye jo screen ki classes hongi. us k class k name k age screen likh donga.

//different pages agar create hongen to un k identifer ko last me Screen k name se likhe gen

//Abi hum ne yaha par MaterialApp li hai q k hum Andriod app k lye kam kr rha hai. jab ios k lye kren gen to cupertinoapp len gen.
//MaterialApp k andar kese page ko design krna hai us page k lye kon si class ko used krna hai. To wo class Scaffolf(). is k andar appbar and body ai gi.
// appbar k andar app ka object create krna hota h or pass krna hota h or is k andar option milta h title ka
//title me widget chahye hota hai
//Scaffold designing purpose k lye use hota hai ye scaffold. material k andar page ko design krna hai. us page k lye kon si class ko use krana hai us ka name hai "SCAFFOLD".

class DashboardScreen extends StatelessWidget

{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("DashBoard"),
      ),
    // backgroundColor: Colors.green,

     // body: Container(
     //   width: double.infinity,
     //   height: double.infinity,
     //   color: Colors.yellow,
     //
     //     child: Center(
     //       child: Container(
     //         width: 200,
     //         height: 200,
     //        // color: Colors.blue,
     //
     //         decoration: BoxDecoration(
     //           color: Colors.blue,
     //               borderRadius: BorderRadius.circular(40),
     //           border: Border.all(
     //             color: Colors.indigo,
     //                 width: 3,
     //           ),
     //
     //             boxShadow: [
     //               BoxShadow(
     //                 color: Colors.white,
     //                 blurRadius: 10,
     //                 spreadRadius: 20
     //               )
     //             ]
     //         ),
     //
     //            ),
     //     ),
     // ),
//
//
// body:Column(
//   children: [
//     Expanded(
//       flex: 3,
//       child: Container(
//  // width: 100,
//   height: 100,
//   color: Colors.green,
//     ),
// ),
//
//
//     Expanded(
//       flex: 2,
//       child: Container(
//         //width: 100,
//        height: 100,
//         color: Colors.orange,
//       ),
//     ),
//
//
//     Expanded(
//       flex: 10,
//       child: Container(
//       //width: 100,
//       height: 100,
//       color: Colors.black,
//     ),
//     ),
//
//
//     Expanded(
//       flex: 6,
//       child: Container(
//       //  width: 100,
//         height: 100,
//         color: Colors.yellowAccent,
//       ),
//     ),
//
//       ],
//
// ),


body: Container(
  color:Colors.black,
    margin: EdgeInsets.only(top: 21,left: 30,bottom: 50, right: 10),
    child:Padding(
      padding: EdgeInsets.only(bottom: 70),
    child:Text('Flutter Development',style: TextStyle(fontSize: 30, color: Colors.yellowAccent),),
    ),
),




    );
  }
}