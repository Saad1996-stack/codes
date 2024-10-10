import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(animate_opacity_one());
}
class animate_opacity_one extends StatelessWidget
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
      home: animate_opacity_two(),
    );
  }
}
class animate_opacity_two extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>animate_opacity_three();
}
class animate_opacity_three extends State
{
  var myopacity = 1.0;
  bool isvisible = true;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
              opacity: myopacity,
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
            ),
            ElevatedButton(
              child: Text("Animated Opacity"),
              onPressed: ()
              {
                setState(() {
                  if(isvisible)
                  {
                    myopacity = 0.0; //invisible
                    isvisible = false;
                  }
                  else
                  {
                    myopacity = 1.0; //visible
                    isvisible = true;
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