import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {


  ReusableButton({required this.text,required this.color,this.textColor});
  String? text;
  Color? color;
  Color? textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0),
      child: MaterialButton(onPressed: (){},
        color: color,
        child: Text('$text',style: TextStyle(fontWeight: FontWeight.bold,color: textColor),),),
    );
  }
}
