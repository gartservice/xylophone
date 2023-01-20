import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({ Color color=Colors.red, int soundNumber=1}){
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(0))
          ),
          onPressed: (){
            playSound(soundNumber);
          },
        child: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          color: color,
        ),
        ),
    );
    }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Xylophone'),
            backgroundColor: Colors.blue,
          ),
        backgroundColor: Colors.black,        
        body: SafeArea(          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.blueAccent, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        )
      ),

    );
  }
}

