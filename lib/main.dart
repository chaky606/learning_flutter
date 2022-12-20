import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  //create list to store quotes text
  List<Quote> quotes =[
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Oscar'),
    Quote(text: 'The trust is rarely pure and never simple', author: 'Oscar')
  ];

  //create card widget
  Widget quoteTemplate(quote){
    return Card(
     margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
     child: Padding(
       padding: const EdgeInsets.all (12),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Text(
             quote.text,
             style: TextStyle(
               fontSize: 18,
               color: Colors.grey[600],
             ),
           ),
           SizedBox(height: 16),
           Text(
             quote.author,
             style: TextStyle(
               fontSize: 14,
               color: Colors.grey[800],
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //return text from list
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}





