import 'package:intern_asgmt/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:intern_asgmt/constants.dart';

class OnboardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: OnboardTitleText('Welcome'),
            bodyWidget: OnboardBodyText('Welcome to this awesome intro screen app.'),
            image: Image(image: AssetImage('images/page1.png'),),
            reverse: true,
            decoration: OnBoardPageDecoration(0xFF80C786),
          ),

          PageViewModel(
            titleWidget: OnboardTitleText('Awesome App'),
            bodyWidget: OnboardBodyText('This is an awesome app, of intro design screen'),
            image: Image(image: AssetImage('images/page2.png'),),
            reverse: true,
            decoration: OnBoardPageDecoration(0xFF62B1EE),
          ),

          PageViewModel(
            titleWidget: OnboardTitleText('Flutter App'),
            bodyWidget: OnboardBodyText('Flutter is awesome for app development'),
            image: Image(image: AssetImage('images/page3.png'),),
            reverse: true,
            decoration: OnBoardPageDecoration(0xFF7787D1),
              ),
        ],
        dotsDecorator: DotsDecorator(
          activeColor: Colors.red,
          size: Size(10,10),
          activeSize: Size(20,20),
        ),

        skip: Text('Skip', style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
        showSkipButton: true,
        onSkip: () {
          Navigator.pop(context);
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>DashBoard()
              ));
        },

        next: Icon(Icons.arrow_forward_sharp, color: Colors.black,),

        done: Text('Let\'s Start', style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
        onDone: () {
          Navigator.pop(context);
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>DashBoard()
              ));
        },
      ),
    );
  }
}
