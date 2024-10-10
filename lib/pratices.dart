import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/fixed_textstyles_functions.dart';
import 'dart:ui' as ui;

void main()
{
  runApp(prac());
}
class prac extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Development",
      theme: ThemeData(
        // textTheme: TextTheme(
        //   headlineLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        //   displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color:Colors.deepPurple),
        //   titleMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
        // ),

        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),

        primarySwatch: Colors.brown,
      ),
    //  home: scr(),
      home: scr(),
    );

  }
}

class scr extends StatelessWidget
{
  var usrname = TextEditingController();
  var usrpas = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    var arrNames = ['Flutter','Development', 'tutorials', 'Dart' , 'Language','Dell', 'XPS', 'German', 'Languages'];
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page of Development"),
      ),

    //Re-Practice of Button

    // body: Container(
    //   color: Colors.blueAccent,
    //   width: double.infinity,
    //   height: double.infinity,
    //   child: Center(
    //     child: OutlinedButton(
    //         child: Text('Login'),
    //         onPressed: ()
    //         {
    //           print("facebook");
    //         },
    //       ),
    //   ),
    // ),


    //   body: Stack(
    //     children:[ Container(
    //         color: Colors.blueAccent,
    //         height: double.infinity,
    //         width: double.infinity,
    //
    //         child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Column(
    //                 children:[ TextButton(
    //                   onPressed: ()
    //                   {
    //                     print('Print Username');
    //                   },
    //                   child: InkWell(
    //                     onTap: ()
    //                       {
    //                         print('Enter Your Username');
    //                       },
    //                       child: Text('Username',style: TextStyle(fontSize: 20),)
    //                   ),
    //                 ),
    //       ],
    //               ),
    //
    //               TextButton(onPressed: (){
    //
    //               },
    //                   child: InkWell(
    //                     onDoubleTap: ()
    //                       {
    //                         print("Enter Your Password");
    //                       },
    //                       child: Text("Password",style: TextStyle(fontSize: 20),))
    //               ),
    //
    //
    //               Center(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     ElevatedButton(
    //                       child: Text('Signup',style: TextStyle(fontSize: 20)),
    //                       onPressed: ()
    //                       {
    //                         print("Please Click For Signup");
    //                       },
    //                     ),
    //
    //                     ElevatedButton(
    //                       child: Text("Login",style: TextStyle(fontSize: 20)),
    //                       onPressed: ()
    //                       {
    //                         print("Please Click For Login");
    //                       },
    //                     ),
    //
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //
    //         ),
    //
    //           Positioned(
    //             top: 1,
    //               right: 1,
    //               child: Image.asset('assets/images/flutterlogo.png'),
    //             width: 50,
    //             height: 50,
    //
    //           ),
    //
    //
    //     ],
    // ),



     // body: Padding(
     //
     //   padding: const EdgeInsets.only(top: 20,left: 30,right: 50),
     //   child: SingleChildScrollView(
     //     child: Column(
     //       children: [
     //         Container(
     //           width: 200,
     //           height: 200,
     //           color: Colors.blueAccent,
     //         ),
     //
     //         Container(
     //           width: 200,
     //           height: 200,
     //           color: Colors.yellowAccent,
     //         ),
     //         Container(
     //           width: 200,
     //           height: 200,
     //           color: Colors.green,
     //         ),
     //
     //
     //         SingleChildScrollView(
     //           scrollDirection: Axis.horizontal,
     //           child: Row(
     //             children: [
     //               Container(
     //               width: 200,
     //               height: 200,
     //               color: Colors.deepPurple,
     //             ),
     //
     //               Container(
     //                 width: 200,
     //                 height: 200,
     //                 color: Colors.amber,
     //               ),
     //
     //               Container(
     //                 width: 200,
     //                 height: 200,
     //                 color: Colors.cyan,
     //               ),
     //                    ],
     //           ),
     //         ),
     //         Container(
     //           width: 200,
     //           height: 200,
     //           color: Colors.orange,
     //         ),
     //         Container(
     //           width: 200,
     //           height: 200,
     //           color: Colors.indigo,
     //         ),
     //
     //       ],
     //     ),
     //   ),
     // )



      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.amber,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //       decoration: BoxDecoration(
      //         color: Colors.black,
      //         borderRadius: BorderRadius.only(topRight: Radius.circular(21),topLeft: Radius.circular(12)),
      //         border: Border.all(
      //           width: 5,
      //           color: Colors.white
      //         ),
      //
      //           boxShadow: [
      //             BoxShadow(
      //           blurRadius: 11,
      //               spreadRadius: 10,
      //               color: Colors.purple
      //
      //       ),
      //           ],
      //         //shape: BoxShape.circle
      //       ),
      //     ),
      //   ),
      // ),

// body: ListView.separated(itemBuilder: (context,index)
//     {
//       return ListTile(
//       leading: CircleAvatar(
//         backgroundImage: AssetImage('assets/images/boy.png'),
//           backgroundColor: Colors.yellow,
//          // child: Text('${index+1}')
//       ),
//       title: Text(arrNames[index]),
//       subtitle: Text('Solftware Enginerring'),
//       trailing: Icon(Icons.add),
//       );
//     },
//
//   itemCount: arrNames.length,
//
//     separatorBuilder: (context,index)
//         {
//           return Divider(height: 10,thickness: 2);
//         }
// ),
        //PRACTICE CIRCLE AVATAR

    // body: Center(
    //   child: Container(
    //     width: 200,
    //     height: 200,
    //       child: CircleAvatar(
    //         backgroundColor: Colors.green,
    //         backgroundImage: AssetImage('assets/images/boy.png'),
    //       ),
    //     ),
    // ),

      // body: Center(
      //   child: CircleAvatar(
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         child: Column(
      //           children: [
      //             Container(
      //               width: 50,
      //             height: 50,
      //             child:Image.asset('assets/images/boy.png'),
      //            // Text('Name'),
      //             ),
      //             Text("Name"),
      //           ],
      //         ),
      //       ),
      //       maxRadius: 50,
      //     ),
      // ),

//Practice Listview.separated with Circle Avatar

  //     body: ListView.separated(itemBuilder: (context,index)
  //   {
  //     return Card(
  //       shadowColor: Colors.black,
  //       elevation: 20,
  //       child: ListTile(
  //        leading: CircleAvatar(
  //        backgroundImage: AssetImage('assets/images/boy.png'),
  //        ),
  //       //title: Text(arrNames[index],style: TextStyle(fontFamily: 'CustomizedFont', fontSize: 25),),
  //         title: (Text(arrNames[index])),
  //       subtitle: Text('Contact'),
  //       trailing: Icon(Icons.add),
  //       ),
  //     );
  //   },
  //         itemCount: arrNames.length,
  //     separatorBuilder: (context,index)
  // {
  //   return Divider();
  // }
  //
  //     ),




//FLUTTER STYLES AND THEME
//
//       body:
//       Column(
//         children: [
//           // Text('Hello Flutter 1',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.green)),
//           // Text('Hello Flutter 2',style: Theme.of(context).textTheme.titleMedium),
//           // Text('Hello Flutter 3',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.orange)),
//           // Text('Hello Flutter 4',style: Theme.of(context).textTheme.displayLarge),
//
//           Text("Hello Dart Language",style: Theme.of(context).textTheme.headlineLarge,),
//           //Text("Hello Flutter", style: Theme.of(context).textTheme.headlineSmall,),
//           //Text('HelloFlutter',style: myTextStyle50(: Colors.orange)),
//           Text('HelloFlutter',style: myTextStyle50()),
//
//         ],
//       ),
//


      //PRACTICE STYLES AND THEMES

      // body: Column(
      //   children: [
      //    // Text('Hi Flutter', style: Theme.of(context).textTheme.headlineLarge,),
      //     Text('Hi Flutter',style: mtextstyle()),
      //   ],
      // ),

//
    //PRACTICE CARD

// body: ListView.separated(itemBuilder: (context,index)
//     {
//       return Card(
//         color: Colors.green,
//         elevation: 20,
//         shadowColor: Colors.purple,
//         child: ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.green,
//             backgroundImage: AssetImage('assets/images/boy.png'),
//            ),
//         title: Text(arrNames[index]),
//         subtitle: Text('Developing'),
//         trailing: Icon(Icons.add),
//         ),
//       );
//     },
//     itemCount: arrNames.length,
//
//     separatorBuilder: (context,index)
//         {
//           return Divider();
//         }
//
//
//
//
//     ),






    //PRACTICE How to get input user name and password
    //Login page
    //
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usrname,
                decoration: InputDecoration(
                  hintText: 'Enter username or phone',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    )
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    )
                  ),

                ),
              ),

              Container(
                height: 10,
              ),

              TextField(
                controller: usrpas,
                obscureText: true,
                obscuringCharacter: '*',
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
                      color: Colors.black,
                      width: 1,
                    ),
                  ),

              ),

              ),

              Container(
                height: 10,
              ),

              Container(
                height: 55,
                width: 300,
                child: ElevatedButton(
                  child: Text("Log in",style: TextStyle(color: Colors.white),),
                  onPressed: ()
                  {
                    String urname = usrname.text;
                    String urpas  = usrpas.text.toString();
                    print('Username email:$urname, Password:$urpas');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.blue,
                  ),

                  ),
                ),


              TextButton(
                child: Text('Forget password', style: TextStyle(decoration: TextDecoration.underline),),
                onPressed: ()
                {

                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: ui.Size(0,0),

                ),
              ),



              ElevatedButton(
                child: Text('Create your account',style: TextStyle(color: Colors.white),),
                onPressed: ()
                {

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.green,
                ),
              ),


            ],
          ),
        ),
      ),


    );













  }

}