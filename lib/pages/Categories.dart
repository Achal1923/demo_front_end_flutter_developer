import 'package:flutter/material.dart';
import 'package:intern_asgmt/constants.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: CustomGrey,
          appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.auto_awesome_mosaic_rounded,color: Colors.white,size: 30),onPressed: (){},),
      title: Text('Categories',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
      backgroundColor: Colors.pink,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search_sharp,color: Colors.white,size: 30),onPressed: (){},),
      ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Text('For You'),
            ),
            Tab(
              child: Text('Design'),
            ),
            Tab(
              child: Text('Beauty'),
            ),
            Tab(
              child: Text('Education'),
            )
          ],
        ),
      ),
      body: ListView(
      children: [
      CategoryPageReusableCard('How to seem like you Always have your shot Together'),
      CategoryPageReusableCard('Does dry is January Actually Improve Your Health?'),
      CategoryPageReusableCard('You do hire a Designer to make something. You hire them.'),
      CategoryPageReusableCard('How to seem like you Always have your shot Together'),
      CategoryPageReusableCard('Does dry is January Actually Improve Your Health?'),
      CategoryPageReusableCard('You do hire a Designer to make something. You hire them.'),
      ],
      ),
      ),
    );
  }
}
