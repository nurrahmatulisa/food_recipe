import 'package:bismillah/auth1/login_screen.dart';
import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/widget/login_screen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(height: 50,),
                Text('Welcome to', style: TextStyle(fontSize: 20 ,color: Colors.white),),
                SizedBox(height: 10,),
                Text(
                  'Food Recipe',
                  style: TextStyle(fontSize: 60, color: Colors.white, shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0xFFFFC20D),
                      offset: Offset(2, 2),
                    )
                  ],
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginScreen1()));
                    }, 
                    child: Text(
                    "Start",
                    style: TextStyle(fontSize: 40.0, ),
                    ),
                    style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Column(
                  children: [
                    Text(
                      'Food Recipe is The Best Ever Recipe',
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                    Text(
                     'Enjoy Your Cooking',
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