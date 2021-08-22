import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

Text OnboardBodyText(String bodyText) => Text(bodyText,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.0,
                                                    ),
                                          );

Text OnboardTitleText(String titleText) => Text(titleText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0,
                                        )
                              );

PageDecoration OnBoardPageDecoration(int PageColour) => PageDecoration(pageColor: Color(PageColour),
                                                                        imageFlex: 2,
                                                                        titlePadding: EdgeInsets.only(top: 45.0,bottom: 20),
                                                                        imageAlignment:Alignment.topCenter ,
                                                                        imagePadding: EdgeInsets.only(top: 10.0),
                                                                        );
const CustomBlueGrey = Color(0xFF324558);
const CustomPink = Color(0xFFFD6592);
const CustomGrey = Color(0xFFE0E0E0);

Card CategoryPageReusableCard(String CardText) => Card(

  margin: EdgeInsets.only(left: 20,right: 20,top: 25),
  elevation: 5,
  child: Container(
    padding: EdgeInsets.all(30.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('images/dashboardImage.png'),height: 100,),
        SizedBox(width: 20,),
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(CardText,textAlign: TextAlign.justify,style: TextStyle(fontSize: 19,color:CustomBlueGrey,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.circle,color: CustomPink,size: 30,),
                  Text('Jonhy Vino',style: TextStyle(fontSize: 16,),),
                  SizedBox(width: 10),
                  Text('4 min read'),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  ),
);