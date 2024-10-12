import 'package:bismillah/auth/sign_in.dart';
import 'package:bismillah/auth1/login_screen.dart';
import 'package:bismillah/providers/product_provider.dart';
import 'package:bismillah/screen/home/profil.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/screen/splash.dart';
import 'package:bismillah/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:bismillah/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
      ),
    );
  }
}
