import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color bkgColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: bkgColor,
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
              buildKey(soundNumber: 1, bkgColor: Colors.red),
              buildKey(soundNumber: 2, bkgColor: Colors.orange),
              buildKey(soundNumber: 3, bkgColor: Colors.yellow),
              buildKey(soundNumber: 4, bkgColor: Colors.green),
              buildKey(soundNumber: 5, bkgColor: Colors.teal),
              buildKey(soundNumber: 6, bkgColor: Colors.blue),
              buildKey(soundNumber: 7, bkgColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
