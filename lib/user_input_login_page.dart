import 'dart:ffi';
import 'dart:ui'
    as ui; //material size k lye ye library use kri h.(forget password k andar)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app/sizedbox.dart';
import 'package:my_first_app/switching_data_another_screen.dart';
import 'package:my_first_app/switching_splash_screen.dart';

void main() {
  runApp(usersinp());
}

class usersinp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Develop",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: loginpagescreen(),
    );
  }
}

class loginpagescreen extends StatelessWidget {
  //ye controller hai jo text field ki values hm ko la de ga means k hame jo values user likh rha hai wo values kese mile gin

  var emails = TextEditingController();
  var pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text("Page of Flutter Development"),
      ),

      // body: Center(
      //   child: Container(
      //     width: 350,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           controller: usnames,
      //             decoration: InputDecoration(
      //               hintText: 'Username',
      //               focusedBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //                 borderSide: BorderSide(
      //                   color: Colors.lightGreen,
      //                 ),
      //               ),
      //
      //               enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //                 borderSide: BorderSide(
      //                   color: Colors.redAccent,
      //                   width: 2,
      //                 ),
      //               ),
      //
      //               disabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //                 borderSide: BorderSide(
      //                   color: Colors.black,
      //                   width: 2,
      //                 ),
      //               ),
      //               prefixIcon: Icon(Icons.email),
      //             ),
      //         ),
      //
      //         Container(
      //           height: 10,
      //         ),
      //
      //         TextField(
      //           controller: uspss,
      //           obscureText: true,
      //           obscuringCharacter: '8',
      //           decoration: InputDecoration(
      //             hintText: 'Password',
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(
      //                 color: Colors.lightGreenAccent,
      //                 width: 2,
      //               ),
      //             ),
      //
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(
      //                 color: Colors.redAccent,
      //                 width: 2,
      //               ),
      //             ),
      //
      //             disabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(
      //                 color: Colors.black,
      //                 width: 2,
      //               ),
      //             ),
      //             prefixIcon: Icon(Icons.key),
      //
      //           ),
      //
      //         ),
      //
      //
      //         Container(
      //           height: 20,
      //         ),
      //
      //
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             ElevatedButton(
      //               child: Text("Login"),
      //               onPressed: ()
      //               {
      //                 String usn = usnames.text.toString();
      //                 String usp = uspss.text;
      //                 print("Email: $usn, Password:$usp");
      //               },
      //             ),
      //             Container(
      //               width: 10,
      //             ) ,
      //
      //             ElevatedButton(
      //               child: Text("Signup"),
      //               onPressed: ()
      //               {
      //
      //               },
      //             ),
      //           ],
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ),
      //

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color : Colors.blue[100],
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  // Navigator.pop(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => switchingscreen()));
                  },
                ),
            ),
            Center(
            child: Container(
              width: 300,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emails,
                    decoration: InputDecoration(
                      hintText: 'Email or phone number',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 10,
                  ),

                  TextField(
                    controller: pass,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                        )),
                  ),

                  Container(
                    height: 10,
                  ),

                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        String user = emails.text.toString();
                        String paswrd = pass.text;
                        print("Email:,$user, Password:,$paswrd");
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     // Add your onPressed functionality here
                  //   },
                  //   child: Text(
                  //     "Forget password",
                  //     style: TextStyle(
                  //       color: Colors.blue, // Text color
                  //       decoration: TextDecoration.underline, // Optional: To underline the text like a link
                  //     ),
                  //   ),
                  //   style: TextButton.styleFrom(
                  //     padding: EdgeInsets.zero, // Removes any padding to make it look like a plain link
                  //     minimumSize: ui.Size(0, 0), // Ensures there's no minimum size
                  //     tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces the tap area to just the text
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12), // Rounded corners, though it won't be visible without borders
                  //     ),
                  //   ),
                  // ),
                  //
                  //

                  TextButton(
                    child: Text(
                      "Forget password",
                      style: TextStyle(
                          color: Colors.blue, decoration: TextDecoration.underline),
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const ui.Size(0, 0),
                      //tapTargetSize: MaterialTapTargetSize.shrinkWrap, //space bilkul khatam krdeta h.
                    ),
                  ),

                  ElevatedButton(
                    child: Text(
                      "Create new account",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
      ],
        ),
      ),
    );
  }
}
