import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {




    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    //For Practice LISTVIEW.BUILDER Passing Array and List as u wish u choose from both of them.

    var names = ['Saad', 'Ahmed', 'Khan', 'Rameen', 'Wahaj', 'Ammi', 'Abbu'];

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
       // title: Text(widget.title),
        title: Text("Flutter Practice Developing"),
      ),
      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     color: Colors.blueAccent,
      //     child: Text("Welcome to Developers", style: TextStyle(fontSize: 24),),
      //
      //   ),
      // ),
  // body: Center(
  //   child: Container(
  //     width: 200,
  //     height: 200,
  //     color: Colors.cyan,
  //     child: Center(child: Text("Saad", style: TextStyle(color: Colors.white , fontSize: 29 , fontStyle: FontStyle.italic),)),
  //
  //   ),
  // ) ,

// body: Text('Good Morning', style: TextStyle(
//     fontSize: 30,
//     color: Colors.cyan,
//     fontWeight: FontWeight.bold,
//     backgroundColor: Colors.brown,
//
// ),),

    //How to Add Button

    // body: Center(
    //   child: OutlinedButton(
    //     child: Text('Log in', style: TextStyle(fontSize: 28 ,fontWeight: FontWeight.bold, color: Colors.blue),),
    //     onPressed: (){
    //       print('Please login your Flutter App');
    //     },
    //     onLongPress: (){
    //       print('long pressed login');
    //     },
    //
    //   ),
    // ),

      // body:ElevatedButton(
      // child: Text('Signup'),
      //   onPressed: (){
      //   print('Please Click on SignUp Button');
      //   },
      //   onLongPress: (){
      //   print('Pressed Long on Signup button');
      //   },
      // )


    //   body:TextButton(
    //     child:Text("Signin Flutter", style: TextStyle(color: Colors.deepPurple)),
    //         onPressed: (){
    //       print('Please Click on Signin Button');
    // },
    //     onLongPress: (){
    //       print('LongPress of Signin Button to Unlock the access');
    //     },
    //   )

        //How to Add Images

       // body: Center(
       //     child: Container(
       //       width: 200,
       //         height: 200,
       //         child: Image.asset("assets/images/dartlogo.jpg"))),


//Columns and Rows  (COLUMNS)

      // body: Column(
      //       children: [
      //        Text('A', style: TextStyle(fontSize: 25),),
      //        Text('B', style: TextStyle(fontSize: 25),),
      //        Text('C', style: TextStyle(fontSize: 25),),
      //        Text('D', style: TextStyle(fontSize: 25),),
      //        Text('E', style: TextStyle(fontSize: 25),),
      //
      //       ]
      //       ),


      //(ROWS)

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, //spaceEvenly Equally size me divide krdega jtna bh space use mil rha h
      //  // crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Text('F', style: TextStyle(fontSize: 25),),
      //     Text('G', style: TextStyle(fontSize: 25),),
      //     Text('H', style: TextStyle(fontSize: 25),),
      //     Text('I', style: TextStyle(fontSize: 25),),
      //     Text('J', style: TextStyle(fontSize: 25),),
      //
      //     ElevatedButton(onPressed: (){
      //
      //     }, child: Text('Login'))
      //   ],
      // ),
                                            //end se sub alpabets and button last right hand side par chala gya
      // body: Container(                      //center se bus beech me ajai ga
      //   color: Colors.deepPurple,
      //   height: 500,                       //spaceBetween, se start and end wali space khatam hojai gi sirf wo alpabets k beech me space ajain gi
      //  //width: 300,
      //   child: Column (                        //spaceAround, start and end ko itna space nh deta and alphabets k beech me space ko zada kr deta h bus.
      //     mainAxisAlignment: MainAxisAlignment.start, //spaceEvenly, start or end k space ko bh le rha h. Equally size me divide krdega jtna bh space use mil rha h
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //
      //     children: <Widget>[
      //
      //       Row(                   //Column k andar mene ROW ko le lye (children)
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //
      //           Text('R1', style: TextStyle(fontSize: 25),),
      //           Text('R2', style: TextStyle(fontSize: 25),),
      //
      //           Column(
      //             children: [
      //
      //               ElevatedButton(onPressed: (){}, child: Text('But')),
      //               ElevatedButton(onPressed: (){}, child: Text('But'))
      //               //Text('RC', style: TextStyle(fontSize: 25),),
      //               //Text('RC', style: TextStyle(fontSize: 25),),
      //             ],
      //           ),
      //
      //            //Text('R1', style: TextStyle(fontSize: 25),),
      //           // Text('R2', style: TextStyle(fontSize: 25),),
      //           Text('R3', style: TextStyle(fontSize: 25),),
      //           Text('R4', style: TextStyle(fontSize: 25),),
      //           Text('R5', style: TextStyle(fontSize: 25),),
      //
      //         ],
      //       ),
      //
      //       Text('C1', style: TextStyle(fontSize: 25),),
      //       Text('C2', style: TextStyle(fontSize: 25),),
      //       Text('C3', style: TextStyle(fontSize: 25),),
      //       Text('C4', style: TextStyle(fontSize: 25),),
      //       Text('C5', style: TextStyle(fontSize: 25),),
      //
      //       ElevatedButton(onPressed: ()
      //       {
      //
      //       },
      //           child: Text('Login'))
      //
      //     ],
      //   ),
      // ),



      //Practice Rows and Columns

      // body: Container(
      //   //height: 300,
      //   //width: 300,
      //   color: Colors.amberAccent,
      //
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget> [
      //
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //
      //         children: [
      //
      //           Container(
      //             color: Colors.deepPurple,
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 OutlinedButton(onPressed: (){}, child: Text('Button')),
      //                 OutlinedButton(onPressed: (){}, child: Text('Button')),
      //               ],
      //             ),
      //           ),
      //
      //           Text('R1', style: TextStyle(fontSize: 25),),
      //           Text('R2', style: TextStyle(fontSize: 25),),
      //           Text('R3', style: TextStyle(fontSize: 25),),
      //           Text('R4', style: TextStyle(fontSize: 25),),
      //         ],
      //       ),
      //
      //       Text('C1', style: TextStyle(fontSize: 25),),
      //       Text('C2', style: TextStyle(fontSize: 25),),
      //       Text('C3', style: TextStyle(fontSize: 25),),
      //       Text('C4', style: TextStyle(fontSize: 25),),
      //       ElevatedButton(onPressed: (){}, child: Text('Click on'))
      //     ],
      //   ),
      // ),
      //
      //

      //INK WELL is se ham kisi bh widget k andar comment show krwa skte hen.

      // body: Center(
      //   child: InkWell(
      //     onTap: ()
      //     {
      //       print('Single Tap Container');
      //     },
      //     onLongPress: ()
      //     {
      //       print('long tap Container');
      //     },
      //     onDoubleTap: ()
      //     {
      //       print('double tap Container');
      //     },
      //     child: Container(
      //       width: 300,
      //       height: 300,
      //       color: Colors.purple,
      //           child: Center(
      //               child: InkWell(
      //                 onTap: ()
      //                   {
      //                     print('click on text');
      //                   },
      //                   child: Text('Dart Flutter Lang',
      //                       style: TextStyle(
      //                           fontSize: 29, fontWeight: FontWeight.w700)
      //                   )
      //               )
      //           ),
      //         )
      //   ),
      // )




//Practice INKWELL

     //
     // body:  InkWell(
     //     onTap: ()
     //     {
     //       print('tab on container');
     //     },
     //     child: Container(
     //       width: 200,
     //       height: 200,
     //       color: Colors.purple,
     //        child: Center(
     //            child: InkWell(
     //              onTap: ()
     //              {
     //                print('click on text');
     //              },
     //                child: Text(
     //          "Flutter",
     //          style: TextStyle(fontSize: 30),
     //        ))),
     //      ),
     //   ),




      //How to scroll down SCROLL DOWN



      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children:[ Container(
      //                 margin: EdgeInsets.only(right: 11),
      //                 width: 200,
      //                 height: 200,
      //                 color: Colors.blueGrey,
      //
      //               ),
      //
      //
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.orange,
      //
      //                 ),
      //
      //
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.amber,
      //
      //                 ),
      //
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.green,
      //
      //                 ),
      //
      //
      //
      //                     ],
      //             ),
      //           ),
      //         ),
      //
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           width: 200,
      //           height: 200,
      //           color: Colors.blueGrey,
      //         ),
      //
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           width: 200,
      //           height: 200,
      //           color: Colors.blueGrey,
      //         ),
      //
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           width: 200,
      //           height: 200,
      //           color: Colors.blueGrey,
      //         ),
      //
      //
      //       ],
      //

          // body: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //    child:SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: SingleChildScrollView(
          //             scrollDirection: Axis.horizontal,
          //             child: Row(
          //               children: [Container(
          //                 width: 200,
          //                 height: 200,
          //                 color: Colors.purple,
          //                 margin: EdgeInsets.only(right: 10),
          //
          //               ),
          //
          //                            Container(
          //                              width: 200,
          //                              height: 200,
          //                              color: Colors.purple,
          //                              margin: EdgeInsets.only(right: 10),
          //
          //
          //
          //                            ),
          //
          //                            Container(
          //                              width: 200,
          //                              height: 200,
          //                              color: Colors.purple,
          //                              margin: EdgeInsets.only(right: 10),
          //                            ),
          //
          //                            Container(
          //                              width: 200,
          //                              height: 200,
          //                              color: Colors.purple,
          //                              margin: EdgeInsets.only(right: 10),
          //                            ),
          //
          //                            ],
          //             ),
          //           ),
          //         ),
          //
          //
          //         Container(
          //           width: 200,
          //           height: 200,
          //           color: Colors.purple,
          //           margin: EdgeInsets.only(bottom: 10),
          //         ),
          //
          //         Container(
          //           //width: 200,
          //           height: 200,
          //           color: Colors.purple,
          //           margin: EdgeInsets.only(bottom: 10),
          //         ),
          //
          //         Container(
          //           //width: 200,
          //           height: 200,
          //           color: Colors.purple,
          //           margin: EdgeInsets.only(bottom: 10),
          //         ),
          //
          //         Container(
          //           //width: 200,
          //           height: 200,
          //           color: Colors.purple,
          //           margin: EdgeInsets.only(bottom: 10),
          //         ),
          //
          //
          //       ],
          //     ),
          //   ),
          // ),




      //LISTVIEW & LISTVIEW.BUILDER & LISTVIEW.SEPARATE

      //LISTVIEW
      //
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     reverse: true,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //       ),
      //     ],
      //   ),
      // ),


        //LISTVIEW.BUILDER


      
     // body: ListView.builder(itemBuilder: (context,index)
     //  {
     //    return Text(names[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
     //  },
     //   itemCount:names.length,
     //   //reverse: true,
     //   itemExtent: 150,
     //   scrollDirection: Axis.horizontal,
     // ),



      //LISTVIEW.SEPARATED

      // body: ListView.separated(itemBuilder: (context,index)
      //     {
      //       return Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //
      //             child: Column(
      //               children: [
      //                 Text(names[index], style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(names[index], style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(names[index], style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
      //         ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(names[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
      //     ),
      //
      //         ],
      //       );
      //     },
      //     itemCount: names.length,
      //     separatorBuilder: (context,index)
      // {
      //   return Divider(height: 100,thickness:1);
      // },
      // ),


      // PRACTICE LIST VIEW SEPARATOR
      // body: ListView.separated(itemBuilder: (context,index)
      //     {
      //       return Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Column(
      //               children: [
      //                 Text(names[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
      //                 Text(names[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10),),
      //
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(names[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10),),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Text(names[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10),),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Text(names[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
      //           ),
      //         ],
      //       );
      //     },
      //
      //     itemCount: names.length,
      //   separatorBuilder: (context,index)
      //     {
      //       return Divider(height: 100, thickness: 2,);
      //     }
      //
      // )



      //ADD DECORATION TO CONTAINER

//      body: Container(
//        width: double.infinity, //pora page par color hojai ga background me
//        height: double.infinity, //pora page par color hojai ga background me
//        color: Colors.blue.shade100, //pora page par color hojai ga background me
//        child: Center(
//          child: Container(
//            width: 150,
//            height: 150,
//            //color: Colors.green,
//            decoration: BoxDecoration( //jab BoxDecoration use kren gen to Color ko BoxDecoration k andar use kren gen.
//              color: Colors.green,
//              borderRadius: BorderRadius.all(Radius.circular(10)), // is se box k border edges (sides) curve hogai thori si
//
//                //BorderRadius.only se border sides (edges) hen un ko manage kr skte hen.
//               // borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21))
//              border: Border.all(
//                width: 1,
//                color: Colors.black
//            ),
//              boxShadow: [
//                BoxShadow(
//                  blurRadius: 100,
//                  color: Colors.yellow,
//                  spreadRadius: 20,
//
//                )
//              ],
//
// //             shape: BoxShape.rectangle
//            ),
//          ),
//        ),
//      ),



    //EXPANDED WIDGET
      //Expanded widget se space divide hoti hai . and space ratio bh provide kr skte hen. expanded widget me flex attribute by default mile ga
      //Expanded widget lagta hai row k width par
      // body: Column(
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //
      //
      //     Expanded(
      //     flex: 2,
      //     child: Container(
      //      // width: 50,
      //       height: 100,
      //       color: Colors.deepPurple,
      //
      //
      //     ),
      //     ),
      //
      //
      //     Expanded(
      //       flex: 4,
      //     child: Container(
      //       //width: 50,
      //       height: 100,
      //       color: Colors.yellow,
      //
      //
      //     ),
      //     ),
      //
      //
      //
      //
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //        // width: 50,
      //         height: 100,
      //         color: Colors.black,
      //
      //
      //       ),
      //     ),
      //
      //
      //
      //    Expanded(
      //      flex: 6,
      //    child:Container(
      //      //width: 50,
      //      height: 100,
      //      color: Colors.green,
      //
      //
      //    ),),
      //   ],
      // ),




      //LISTTILE

      // body: ListView.separated(itemBuilder: (context,index)
      // {
      //  return ListTile(
      //  leading: Text('${index+1}',style: TextStyle(fontSize: 28),),
      //    title: Text(names[index]),
      //    subtitle: Text('fam'),
      //    trailing: Icon(Icons.add),
      //  );
      // },
      //   itemCount: names.length,
      //   separatorBuilder: (context,index)
      //   {
      //     return Divider(height: 20,thickness:1);
      //   },
      // ),


     body: ListView.separated(itemBuilder: (context,index)
    {
      return ListTile(
        leading: Text('$index'),
        title: Text(names[index]),
        subtitle: Text('fam'),
        trailing: Icon(Icons.add),

      );
    },

    itemCount: names.length,
       separatorBuilder: (context,index)
         {
           return Divider(height: 3,thickness: 3);
         },

    )
    );













    //     ),
      //   ),
      // ),













  //  );















  }
}

