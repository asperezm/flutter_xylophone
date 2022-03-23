import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey(Color color, int numero) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numero);
        },
        child: Text(''),
      ),
    );
  }

  Widget buildKey2(String text, Color color, int number) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          playSound(number);
        },
        child: Card(
          color: color,
          child: ListTile(
            leading: Icon(
              Icons.music_note,
              color: Colors.white,
              size: 40.0,
            ),
            title: Text(
              text,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey2('Do',Colors.red, 1),
              buildKey2('Re',Colors.orange, 2),
              buildKey2('Mi',Colors.yellow, 3),
              buildKey2('Fa',Colors.green, 4),
              buildKey2('Sol',Colors.teal, 5),
              buildKey2('La',Colors.blue, 6),
              buildKey2('Si',Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
