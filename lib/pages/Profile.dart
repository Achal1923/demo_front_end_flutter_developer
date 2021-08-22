import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.grey.shade300,
      body: ListView(
        children: [
          Column(
          children: [
            Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Positioned(
                      child: Container(
                        child:Image.asset('images/profile-back.jpg'),
                      ),
                    ),
                Positioned(
                    right: 120,
                    top: 110,
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('images/person.jpg'),
                                                  fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 3.0,
                            spreadRadius: 3.0,// shadow direction: bottom right
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
            Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Erwin Smith',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                    SizedBox(height: 5,),
                    Text('Flutter Developer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                    Text('Noida',style: TextStyle(fontSize: 14,color: Colors.grey.shade600)),

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Likes',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('200',style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        ),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            Text('Comments',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('3000',style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        ),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            Text('Fovourites',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('600',style: TextStyle(color: Colors.grey.shade600),),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 30,),

                    Row(
                      children: [
                        Icon(Icons.email,size: 22,color: Colors.grey.shade500,),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text('cmdrSmith@gmail.com',style: TextStyle(color: Colors.grey.shade600)),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Icon(Icons.phone,size: 22,color: Colors.grey.shade600,),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text('+380-781800749',style: TextStyle(color: Colors.grey.shade600)),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Icon(Icons.web_sharp,size: 25,color: Colors.grey.shade600,),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Website',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text('-',style: TextStyle(color: Colors.grey.shade600)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ]),
      ]),
    );
  }
}