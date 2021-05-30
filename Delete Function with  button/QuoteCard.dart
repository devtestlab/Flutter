import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete; // delete argument for QuoteCard class
  QuoteCard({required this.quote, required this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[800],
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
                onPressed: () => delete(), // Function delete that is defined in main.dart
                icon: Icon(Icons.delete),
                label: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}