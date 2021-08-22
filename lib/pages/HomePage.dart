import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Expanded(
          child:Text('This is Home page.')
        ),
      ),
    );
  }
}
