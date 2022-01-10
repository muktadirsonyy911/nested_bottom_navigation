import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
      title: Text('Settings'),
    ),
    body: Center(
      child: Text('This is settingsView'),
    ),));
  }
}
