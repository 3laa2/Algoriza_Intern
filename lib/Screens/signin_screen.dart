import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:task1/Screens/register_screen.dart';
import 'package:task1/components/reusable_button.dart';
import 'package:task1/components/reusable_google_button.dart';
import 'package:task1/components/reusable_phone.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset('images/img.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome to Fashion Daily',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 30),
              child: Row(
                children: [
                  const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: const [
                      Text(
                        'Help',
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 15.0),
                      ),
                      Icon(
                        Icons.help,
                        color: Colors.lightBlue,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0, 0, 10),
              child: Row(
                children: const [
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            // country picker container
            ReusablePhoneContainer(),
            ReusableButton(
              text: 'Sign in',
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Text(
              'Or',
              textAlign: TextAlign.center,
            ),
            // google sign button
            ReusableGoogleButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Doesn\'t has any Account? '),
                TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  RegisterScreen()),
                      );
                    },
                    child: Text('Register Here',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),))
              ],
            ),
            SizedBox(height: 20.0,),
            const Text(
              'use the application according to policy rules, Any kinds of violations'
                  'will be subjected to sanctions.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54,),
            ),
          ],
        ),
      ),
    );
  }
}
