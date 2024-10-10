import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(classone());
}

class classone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Development',
      home: classtwo(),
    );
  }
}

class classtwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => classthree();
}

class classthree extends State<classtwo> {

//CALL BACK FUNCTION
  callbackdate()
  async{
    DateTime? selectdates =  await showDatePicker
      (context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1),
        lastDate: DateTime(9999)
    );
    if(selectdates!=null)
      {
        print("Selected Date:${selectdates.day}-${selectdates.month}-${selectdates.year}");
      }
  }
  
 callbacktimes ()
 async{
   TimeOfDay? times = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
       initialEntryMode: TimePickerEntryMode.dial
   );
   if(times!= null)
     {
       print("Selected Time:${times.hour}:${times.minute}");
     }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Get User Date Time"),
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.login))],
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: Text("Show the date"),
              onPressed: callbackdate,
             //  onPressed: () async {
             //    DateTime? pickthedate = await showDatePicker(
             //      context: context,
             //      initialDate: DateTime.now(),
             //      firstDate: DateTime(1),
             //      lastDate: DateTime(9999),
             //      //initialEntryMode: DatePickerEntryMode.calendar,
             //    );
             //    if (pickthedate != null) {
             //      print(
             //          "Select the Date:${pickthedate.day}/${pickthedate.month}/${pickthedate.year}");
             //    }
             //  },
            ),
            ElevatedButton(
              child: Text("Time Picker"),
              onPressed: callbacktimes,
              // onPressed: () async {
              //   TimeOfDay? userstimes = await showTimePicker(
              //       context: context,
              //       initialTime: TimeOfDay.now(),
              //       initialEntryMode: TimePickerEntryMode.input);
              //
              //   if (userstimes != null) {
              //     print(
              //         "Select the Time:${userstimes.hour}:${userstimes.minute}");
              //   }
              // },
            ),
          ],
        ));
  }
}
