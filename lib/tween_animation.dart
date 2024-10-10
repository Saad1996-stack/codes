import 'package:flutter/material.dart';

void main ()
{
  runApp(tweenanim());
}
class tweenanim extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Development",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: tween_animation(),
    );
  }
}
class tween_animation extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>tween_animations();
}
class tween_animations extends State<tween_animation>with SingleTickerProviderStateMixin
{

  late Animation animation;
  late AnimationController animationController;
  late Animation coloranimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: (Duration (seconds: 5)));
    animation = Tween(begin: 0.0 , end: 200.0).animate(animationController);
    coloranimation = ColorTween(begin: Colors.lightGreen, end: Colors.indigo).animate(animationController);

    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          color: coloranimation.value,
          width: animation.value,
          height: animation.value,
        ),
      ),
    );
  }

}