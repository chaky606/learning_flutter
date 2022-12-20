import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ChakCard(),
    ));

class ChakCard extends StatefulWidget {
  @override
  State<ChakCard> createState() => _ChakCardState();
}

class _ChakCardState extends State<ChakCard> {

  int userLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Chak ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),

      //build button
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            userLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb-1.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[400],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Monika',
              style: TextStyle(
                color: Colors.orange,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$userLevel',
              style: TextStyle(
                color: Colors.orange,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 10),
                Text(
                  'monika46372809@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}




