import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice5.png'),
                onPressed: () {
                  print('Left button got pressed!');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice6.png'),
                onPressed: () {
                  print('Right button got pressed!');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
