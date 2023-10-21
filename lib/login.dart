// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart/chat.dart';
import 'package:flutter_application_1/register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  /*
Future<void> loginUser(String email, String password) async {
  // إجراء فحص على صحة البريد الإلكتروني وكلمة المرور هنا
  if (email.isEmpty || password.isEmpty) {
    // عندما يكون أحد الحقول فارغًا
    print("Please enter both email and password.");
    return;
  }

  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // Login successful, you can navigate to another screen or show a success message.
  } catch (e) {
    // Login failed, handle the error (e.g., display an error message).
    print("Error: $e");
  }
}
*/

  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "https://lh3.googleusercontent.com/-DkHsfs-afWN2zWLfLn9B9IM9IWGAD2eV3DFRe2zRE-xME-weJljqGWmsHgB4DraTqs"),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      hintText: "Enter Your Email : ",
                    )),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      hintText: "Enter Your Password : ",
                    )),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (email.isEmpty || password.isEmpty) {
                      final snackBar = SnackBar(
                        content: Text("Please enter both email and password."),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Chat()));
                      } catch (e) {
                        final snackBar = SnackBar(
                          content: Text("invild password or email"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?",
                        style: TextStyle(fontSize: 18)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text('sign up',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18))),
                  ],
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
