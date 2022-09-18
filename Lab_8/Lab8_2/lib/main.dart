/// SDP Lab - 8 - Tutorial 2
/// Author: Pritesh Parmar
/// Roll No: CE083


/*
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: MyApp(),
));


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num age = 20;
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Lab 8 - Tutorial 2"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.purpleAccent,
                minRadius: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Name:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
                "Pritesh Parmar",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Age:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueAccent,

                ),
                Text("    pritesh@mail.com",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            age--;
          });
        },
        child: Icon(
          Icons.minimize,
        ),
        backgroundColor: Colors.red,
      ),

    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:lab8_2/quote.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote("This is a quote 1", "Author 1"),
    Quote("This is a quote 2", "Author 2"),
    Quote("This is a quote 3", "Author 1"),
  ];

  Widget QuoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20, 30, 40, 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style:TextStyle(
                fontSize: 20,
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightGreen,
              ),)
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => QuoteTemplate(quote)).toList(),

      ),
    );
  }
}
