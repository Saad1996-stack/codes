import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/user_input_login_page.dart';

class switchingscreen extends StatefulWidget {
  @override
  State<switchingscreen> createState() => _switchingscreenState();
}

class _switchingscreenState extends State<switchingscreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
      {
        return loginpagescreen();
      }
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //title: Text("Splashing & Switching Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("die App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),

            SizedBox(
              height: 10,
            ),

          ],

        ),


      )
    );
  }
}
