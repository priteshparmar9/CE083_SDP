/// SDP Lab - 8 - Tutorial 1
/// Author: Pritesh Parmar
/// Roll No: CE083


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lab 8 - 1"),
          centerTitle: true,
        ),

        /*

      body: const Padding(
        padding: EdgeInsets.all(50),
        child: Text("Hello World"),
      ),

     */

        /*
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("This is a row"),
          ),
          FlatButton(
              onPressed: (){},
              child: Text("Press Me"),
              color: Colors.tealAccent,
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(30),
            child: Text("Inside container"),
          )
        ],
      )
         */
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Expanded(
              child: Container(
                color: Colors.limeAccent,
                padding: EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text('1'),
                ),
              ),
            ),
            Container(
              color: Colors.green[800],
              padding: EdgeInsets.all(20.0),
              child: Text('2'),

            ),
            Container(
              color: Colors.blue[800],
              padding: EdgeInsets.all(20.0),
              child: Text('3'),

            ),
          ],

        )


    );
  }
}
