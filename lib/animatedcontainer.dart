import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp((animatecontainerone()));
}
class animatecontainerone extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Development",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: animatecontainertwo(),
    );
  }
}
class animatecontainertwo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>animatecontainerthree();
}
class animatecontainerthree extends State
{

  var _width = 300.0;
  var _height = 100.0;

  bool flag = true;

  //var bgcolor = Colors.blue;

  Decoration decbox = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color:  Colors.blue,
  );

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo - Animated Container"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: decbox,
              curve: Curves.bounceIn,
            ),


            ElevatedButton(
              child: Text("Animate"),
              onPressed: ()
              {
                setState(() {

                  if(flag)
                  {
                    _width = 100.0;
                    _height = 200.0;
                    flag = false;
                    decbox = BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrange,
                    );
                  }
                  else
                  {
                    _width = 300.0;
                    _height = 100.0;
                    flag = true;
                    decbox = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.blue,
                    );
                  }

                });
              },
            ),
          ],
        ),
      ),
    );


  }
}