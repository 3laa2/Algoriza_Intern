import 'package:flutter/material.dart';
import 'package:task1/Screens/signin_screen.dart';
import 'package:task1/components/reusable_button.dart';
import 'package:task1/components/reusable_google_button.dart';
import 'package:task1/components/reusable_phone.dart';

class RegisterScreen extends StatelessWidget {
  var size, height;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120.0,
            child: Image.asset(
              'images/img.jpg',
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
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
                        'Register',
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
                            style: TextStyle(
                                color: Colors.lightBlue, fontSize: 15.0),
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
                // Email text
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                // Email textformfield
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey, width: 2.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ex. alaa@gmail.com',
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                // Phone number text
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ),
                // country picker container
                ReusablePhoneContainer(),

                SizedBox(
                  height: 20.0,
                ),
                // Password text
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                // password textformfield
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey, width: 2.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                ReusableButton(
                  text: 'Register',
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
                    Text('Has any Account? '),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                          );
                        },
                        child: Text(
                          'Sign in Here',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'use the application according to policy rules, Any kinds of violations'
                  'will be subjected to sanctions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
