import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/swiching_screen_pass_data.dart';
import 'package:my_first_app/user_input_login_page.dart';

class switch_data_another_screen extends StatelessWidget
{
  var passdata;
  switch_data_another_screen(this.passdata);

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          title: Text("Switch Data one to another Screen"),
        ),
        body: Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to: $passdata",style: TextStyle(fontSize: 25,color: Colors.blue),),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  child: Text("Save the data"),
                  onPressed: ()
                  {
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=>pass_the_data_to_another()));
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }

}