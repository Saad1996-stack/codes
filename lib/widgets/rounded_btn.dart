import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final TextStyle? textStyles;
  final Color? bgcolor;
  final VoidCallback? callback;


  RoundedButton({required this.btnName,
      this.icon,
      this.textStyles,
      this.bgcolor = Colors.blue,
      this.callback});

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(         //!(icon == null) ye opposite krdega means:- icon abi null hai icon==null ab mene ! laga dya to condition ulat hogai
     //child: icon!=null ? Text("Saad" //icon khali nh hai
       child: icon!=null ? Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Container(width: 10,),
            Text(btnName,style: textStyles,)
          ],
       ): Text(btnName,style: textStyles,),
    // ): Text(btnName,style: textStyles,),
       onPressed: ()
     {
        callback!();
     },
     style: ElevatedButton.styleFrom(
       backgroundColor: bgcolor,
       shadowColor: Colors.blue,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(12),
       ),
     ),
   );


  }
}
