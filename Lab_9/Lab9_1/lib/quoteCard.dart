

import 'package:flutter/material.dart';
import 'package:lab9_1/quote.dart';

class quoteCard extends StatelessWidget {
  final VoidCallback delete;
  final Quote quote;
  quoteCard({
    required this.quote, required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 30, 40, 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(onPressed: delete, icon: Icon(
                Icons.delete_outline
            ), label: Text("Delete")
            )
          ],
        ),
      ),
    );
  }
}
