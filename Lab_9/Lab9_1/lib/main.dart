/// SDP Lab - 9 - Tutorial 1
/// Author: Pritesh Parmar
/// Roll No: CE083



import 'package:flutter/material.dart';
import 'package:lab9_1/quote.dart';
import 'package:lab9_1/quoteCard.dart';

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

  // quoteCard quoteTemplate(quote) {
  //   return quoteCard(quote: quote);
  // }

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
        children: quotes.map((quote) => quoteCard(quote:quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),

      ),
    );
  }
}
