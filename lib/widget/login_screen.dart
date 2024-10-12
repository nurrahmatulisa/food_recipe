import 'dart:ffi';

import 'package:bismillah/auth1/signup_screen.dart';
import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/widget/home_screen.dart';
import 'package:bismillah/widget/round_button.dart';
import 'package:bismillah/widget/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loginScreen1 extends StatefulWidget {
  const loginScreen1({super.key});

  @override
  State<loginScreen1> createState() => _loginScreen1State();
}

class _loginScreen1State extends State<loginScreen1> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
      }
  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        // onSaved: (value) {
        //   emailController.text = value!;
        // },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: kDarkColor,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen1()));
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    return 
    // WillPopScope(
      // onWillPop: () async {
      //   SystemNavigator.pop();
      //   return true;
      // },
      // child:
       Scaffold(
        // backgroundColor: kDarkColor,
        appBar: AppBar(
          backgroundColor: kDarkColor,
          automaticallyImplyLeading: false,
          title: Text("Login"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/gambar.png'))),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(
                    //     height: 200,
                    //     child: Image.asset(
                    //       "assets/logo.png",
                    //       fit: BoxFit.contain,
                    //     )),
                    SizedBox(height: 45),
                    emailField,
                    SizedBox(height: 25),
                    passwordField,
                    SizedBox(height: 35),
                    loginButton,
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          signupScreen1()));
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ]),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen()));
                            },
                            child: Text(
                              ".",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ])
                  ],
                ),
              ),
              // Form(
              //   key: _formKey,
              //   child: Column(
              //     children: [
              //       TextFormField(
              //         keyboardType: TextInputType.emailAddress,
              //       controller: emailController,
              //       decoration: const InputDecoration(
              //         hintText: 'Email',
              //         // helperText: 'enter email e.g. ica@gmail.com',
              //         prefixIcon: Icon(Icons.email)
              //         ),
              //         validator: (value) {
              //           if(value!.isEmpty){
              //             return 'Enter email';
              //           }
              //           return null;
              //         },
              //         ),
              //     SizedBox(height: 15,),
              //     TextFormField(
              //       keyboardType: TextInputType.text,
              //       controller: passwordController,
              //       obscureText: true,
              //       decoration: const InputDecoration(
              //         hintText: 'Password',
              //         // helperText: 'enter your password e.g 123456',
              //         prefixIcon: Icon(Icons.key)
              //         ),
              //         validator: (value) {
              //           if(value!.isEmpty){
              //             return 'Enter password';
              //           }
              //           return null;
              //         },
              //         ),
              //     ],
              //   )),
            //   const SizedBox(height: 50,),
            //   RoundButton(title: "Login",
            //   onTap: (){
            //     if(_formKey.currentState!.validate()){
            //     }
            //   },),
            // const SizedBox(height: 10,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("Don't have an account?"),
            //     TextButton(onPressed: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context) => signupScreen()));
            //     }, child: Text("SignUp"))
            //   ],
            // )
            ],
          ),
        ),
      );
    
  }
}