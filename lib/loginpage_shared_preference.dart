import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/home_page_shared_pref.dart';
import 'package:my_first_app/splash_shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class log_share extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text("Name"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              label: Text("Password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),

          ElevatedButton(
              onPressed: ()
              async {
                //If Successfully logged in (Credentials are correct)

                var sharepref = await SharedPreferences.getInstance();
                sharepref.setBool(splashsharedpref.KEYLOGIN, true);

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_shared_pref()));
              },
              child: Text("Login"))

        ],
      ),
    );
  }

}
