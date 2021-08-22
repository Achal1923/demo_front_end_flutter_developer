import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Expanded(
            child:Text('This is Settings page.')
        ),
      ),
    );
  }
}
