import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded buildKey({Color color, int no}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(no);
        },
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
            children: <Widget>[
              buildKey(color: Colors.red, no: 1),
              buildKey(color: Colors.orange, no: 2),
              buildKey(color: Colors.yellow, no: 3),
              buildKey(color: Colors.green, no: 4),
              buildKey(color: Colors.teal, no: 5),
              buildKey(color: Colors.blue, no: 6),
              buildKey(color: Colors.purple, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
