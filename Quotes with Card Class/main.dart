import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

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
    Quote(author: 'The Bible', text: 'Ask, and it shall be given you; seek, and you shall find.'),
    Quote(author: 'Blanche Dubois', text: 'I have always depended on the kindness of strangers.'),
    Quote(author: 'Margaret Thatcher', text: 'If you want something said, ask a man; if you want something done, ask a woman.'),
    Quote(author: 'Forrest Gump', text: 'Life is like a box of chocolates. You never know what you’re gonna get.'),
    Quote(author: 'Captain', text: 'What we have got here is failure to communicate. Some men you just can not reach.'),
    Quote(author: 'Alfred Lord Tennyson', text: 'Tis better to have loved and lost than never to have loved at all.')
  ];


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
        children: quote.map((quotes) => QuoteCard(quote: quotes)).toList()
        //children: quote.map((quotes) => Text('${quotes.text} - ${quotes.author}')).toList()
      )
    );
  }
}


