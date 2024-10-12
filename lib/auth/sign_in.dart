import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home/profil.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkGreyColor,
        body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/sampul.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text('Sign In to Continue', style: TextStyle(color: Colors.white),),
                Text(
                  'Food Recipe',
                  style: TextStyle(fontSize: 40, color: Colors.white, shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0xFFFFC20D),
                      offset: Offset(2, 2),
                    )
                  ],
                  ),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign in with Apple",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfile()));
                      },
                    ),
                    SignInButton(
                  Buttons.Google,
                  text: "Sign in with Google",
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'By Signing in you are agreeing to our',
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                    Text(
                     'Terms and Privacy Policy',
                     style: TextStyle(
                        color: Colors.white30,
                         ),
                    ),
                  ],
                ),
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
    
    