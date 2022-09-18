/// Lab - 7, SDP
/// Author: Pritesh Parmar
/// Roll No: CE083


import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

// Below StatelessWidget can be generated with shortcut stless.

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
      ),
      // AppBar is used to define heading/title of the application which appears at the top of page.
      // The second line centerTitle sets its value to true which leads the title text to appear on center.

      body: const Center(
        // The center method will display all content for body in the center of frame.

        /*
        child: Image(
          image: AssetImage('assets/subasset/pic.jpg'),
        ),
        // The above code will display pic.jpg to page which is flag of India.
        // To specify the image, we need to add the path of its folder to pubspec.yml file.
        */



        /*
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          // To specify onPressed method is compulsory for ElevatedButton other wise it shows error.
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold)
          ),
          // The style attribute specifies the style for given button. In that for padding, symmetric is used which leads text to appear on center of button.

        ),
         */


        /*
        child: FlatButton(
          onPressed: (){
            print("Button is clicked!");
          },
          child: Text("Click"),
          color: Color.fromRGBO(255, 0, 0, 1),
          // RGBO -> Red, Green, Blue, Opacity
        ),
        // For above FlatButton, when it is pressed, the necessory method print will be called and it prints Button is clicked on the console of Android Studio.
        */


        /*
        child:IconButton(
          icon: Icon(
            Icons.mail,
            size: 30.0,
          ),
          tooltip: 'Send an Email',
          onPressed: (){
            print('Email Sent');
          },
        ),
        // IconButton method is used to show on frame. Which here shows a mail icon.
        // On pressing that icon, onPressed method will be called and it will print Email Sent to the console of Android Studio.
        */



        /*
          child: TextButton.icon(
            icon: Icon(
              Icons.access_alarm,
              color:Colors.amber,
              size: 70.0,
            ),
            label: Text(
              "Alarm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                letterSpacing: 1.0,
                backgroundColor: Colors.amber,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),

         */
        /*
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: Icon(
                Icons.alarm_off,
                color:Colors.amber,
                size: 70.0,
              ),
              label: Text(
                "Turn alarm off",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Colors.amber,
                ),
                textAlign: TextAlign.start,
              ),
              onPressed: () {},

            )
            ,
          )
         */

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Button"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
