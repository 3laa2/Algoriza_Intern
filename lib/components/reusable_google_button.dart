import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class ReusableGoogleButton extends StatelessWidget {
  const ReusableGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SignInButton(
        Buttons.Google,
        text: 'Sign with by Google',
        onPressed: (){},
      ),
    );
  }
}
