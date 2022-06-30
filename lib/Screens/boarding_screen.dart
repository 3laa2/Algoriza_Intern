import 'package:flutter/material.dart';

import '../components/reusable_button.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Alaa Eldin',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  fontSize: 25.0),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTwQ_4WDaG622jZ5R3qrM7FREuRobYcWfo_Q&usqp=CAU'),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Get Food delivery to your doorstep asap',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            ReusableButton(text: 'Get Started',color: Colors.tealAccent,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an Account? '),
                Text('Sign Up',style: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.bold,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
