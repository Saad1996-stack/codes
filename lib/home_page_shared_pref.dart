import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/loginpage_shared_preference.dart';
import 'package:my_first_app/splash_shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home_shared_pref extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Shared Preference"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home,color: Colors.green.withOpacity(0.5),size: 80,),

            SizedBox(
              height: 15,
            ),

            ElevatedButton(
              child: Text("logout"),
              onPressed: ()
             async {
                var sharedprefer = await SharedPreferences.getInstance();
                sharedprefer.setBool(splashsharedpref.KEYLOGIN, false);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>log_share()));
              },
            ),
          ],
        ),
      )
    );
  }

}