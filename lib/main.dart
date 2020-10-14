import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded noteButton({Color colour, int note}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$note.wav');
          },
          color: colour,
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              noteButton(colour: Colors.red, note: 1),
              noteButton(colour: Colors.orange, note: 2),
              noteButton(colour: Colors.yellow, note: 3),
              noteButton(colour: Colors.green, note: 4),
              noteButton(colour: Colors.teal, note: 5),
              noteButton(colour: Colors.blue, note: 6),
              noteButton(colour: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
