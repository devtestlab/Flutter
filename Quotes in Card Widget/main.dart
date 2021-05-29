import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quote = [
    Quote(author: 'William Shakespeare', text: 'All the world’s a stage, and all the men and women merely players.'),
    Quote(author: 'the Bible', text: 'Ask, and it shall be given you; seek, and you shall find.'),
    Quote(author: 'the Bible', text: 'For those to whom much is given, much is required.'),
    Quote(author: 'Margaret Thatcher', text: 'If you want something said, ask a man; if you want something done, ask a woman.'),
    Quote(author: 'Forrest Gump', text: 'Life is like a box of chocolates. You never know what you’re gonna get.')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 19.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey[800],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Famous Motivational Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote.map((quotes) => quoteTemplate(quotes)).toList()
      )
    );
  }
}