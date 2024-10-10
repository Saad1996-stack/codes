import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/rounded_btn.dart';

void main ()
{
  runApp(custbtn());
}
class custbtn extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter & Dart",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: custbtntwo(),
    );
  }
}
class custbtntwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>custbtnthree();
}
class custbtnthree extends State<custbtntwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Flutter"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
      ),
      backgroundColor: Colors.lightGreen,

      body: Center(
        child: Container(
          width: 200,
          height: 50,
          child: RoundedButton(
            btnName: "login",
            textStyles: TextStyle(fontSize: 25, color: Colors.black),
            icon: Icon(Icons.lock),
            callback: ()
            {
              print("login");
            },


          ),
        ),
      ),

    );
  }
}
