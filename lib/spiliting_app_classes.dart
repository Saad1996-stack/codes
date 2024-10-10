import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(splitting_app_class_one());
}

class splitting_app_class_one extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Fluuter Development",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: splitting_app_class_two(),
    );
  }
}

class splitting_app_class_two extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold (
      appBar: AppBar(
        title: Text("Splitting the App in classes"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        ],
      ),
      body: Column(
        children: [

          categoryitem(),
          contacts(),
          subcategoryitems(),
          bottommenu(),

        ],
      ),
    );
  }
}


class categoryitem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.lightGreen[100],
        child: ListView.builder(
          itemBuilder: (context, index)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/boy.png'),
                  backgroundColor: Colors.deepOrangeAccent,
                ),

              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );

  }

}

class contacts extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.purpleAccent[100],
        child: ListView.builder(itemBuilder: (context,index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/boy.png'),
          ),
          title: Text("Name"),
          subtitle: Text("Mobile No"),
          trailing: Icon(Icons.delete),
        ),
        ),
      ),
    );
  }

}

class subcategoryitems extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return  Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[100]
            ),
          ),
        ),
          itemCount: 10, scrollDirection: Axis.horizontal,
        ),

      ),
    );
  }

}

class bottommenu extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.indigoAccent,
        child: GridView.count(crossAxisCount: 3,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}