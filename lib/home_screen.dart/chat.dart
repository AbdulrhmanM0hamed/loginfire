import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference messages = FirebaseFirestore.instance.collection('messages');


class Chat extends StatelessWidget {
  const Chat({super.key});
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Mohammed salah" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
      backgroundColor: Colors.white,
      centerTitle: true,
      
      
      leading: IconButton(  onPressed: () {
            // Replace the current page with the second page when the button is pressed.
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) => Login(),
            ));
          }, icon: Icon(Icons.arrow_back , color: Color.fromARGB(255, 2, 49, 88),)), actions: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
           radius: 25,
            backgroundImage: NetworkImage("https://th.bing.com/th/id/R.9df889631331409c273b300ec8a542ba?rik=0ZpvT8UIBBEBZg&pid=ImgRaw&r=0"),
             ),
        )
      ],),
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10 ,  top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 35,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Color.fromARGB(74, 165, 154, 154).withOpacity(.2)),
                
                child: Text("Hi salah" ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20),)),
            ),
          ),
          SizedBox(height: 20,),
             Align(
              alignment: Alignment.topRight,
               child: Container(
                height: 35,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Color.fromARGB(255, 38, 87, 245)),
                
                child: Text("congratulations" ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20 ,color: Colors.white ),)),
             ),
            
            Spacer(flex: 1,),

            TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      hintText: "Type message : ",
                      prefixIcon: Icon(Icons.emoji_emotions_outlined),
                      suffixIcon: Icon(Icons.send)
                    )),
        ],
      ),
      
    );
  }
}