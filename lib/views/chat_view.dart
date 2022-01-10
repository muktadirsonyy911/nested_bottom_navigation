import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
      title: Text('ChatView'),
    ),
    body: Center(
      child: Text(
        'This is chatView'
      ),
    ),));
  }
}
