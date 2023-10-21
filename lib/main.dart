import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart/chat.dart';
import 'package:flutter_application_1/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/register.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyC_nD-dVbf5yWYWJb3xJzSAoPIzXH-bes0" , appId: "1:245350945273:android:82ded91971c184c31b6d28", messagingSenderId: "245350945273", projectId:"chatapp-8ff7b"
)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp (

      debugShowCheckedModeBanner: false,
      title: 'Login & Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}