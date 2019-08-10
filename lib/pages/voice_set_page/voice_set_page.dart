import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

/* *
 * 语音播放
 */
class VoiceSetPage extends StatelessWidget {
  FlutterTts flutterTts = new FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('voice_set_page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('播放语音'),
              onPressed: () {
                _speak();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future _speak() async {
    print('hello');
    await flutterTts.speak("用户实时单189-5429-9351");
  }
}
