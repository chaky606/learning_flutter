import 'package:flutter/material.dart';

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
  List<String> quotes =[
    'Be yourslf; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The trust is rarely pure and never simple'
  ];
  
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
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}





