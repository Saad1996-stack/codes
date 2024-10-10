import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/home_page_shared_pref.dart';
import 'package:my_first_app/loginpage_shared_preference.dart';
import 'package:my_first_app/user_input_login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main ()
{
  runApp(splash_share());
}

class splash_share extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Development",
      home: splash(),
    );
  }

}

class splash extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>splashsharedpref();
}
class splashsharedpref extends State<splash>
{

static const String KEYLOGIN = "login";

@override
  void initState()
{
    super.initState();
    wheretogo();
}

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Shared Pref"),
      ),
      body: Container(
        color: Colors.blue,
          child: Center(child: Icon(Icons.account_circle,color: Colors.lightGreen)),
    ),
    );
  }


  void wheretogo()
  async{

    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedin = sharedpref.getBool(KEYLOGIN);

    if(isLoggedin!=null)
      {
        if(isLoggedin)
          {
            Timer(Duration(seconds: 2), (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_shared_pref()));
            });
          }
        else
          {
            Timer(Duration(seconds: 2), (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>log_share()));
            });
          }
      }
    else
      {
        Timer(Duration(seconds: 2), (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>log_share()));
        });
      }
  }
}