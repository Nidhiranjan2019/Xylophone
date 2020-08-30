import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.lime,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(1);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                child: Container(
                  color: Colors.red,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(2);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  color: Colors.green,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(3);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  color: Colors.yellow,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(4);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  color: Colors.blue,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(5);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  color: Colors.purpleAccent,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(6);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Container(
                  color: Colors.teal,
                ),
              ),),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(onPressed: (){
                playSound(7);
              }, child: Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,16),
                child: Container(
                  color: Colors.cyanAccent,
                ),
              ),),
            ),
          ],
        ),
        ),
    );
  }
}


