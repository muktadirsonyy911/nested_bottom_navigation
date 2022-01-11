import 'package:flutter/material.dart';
import 'package:nested_bottom_navigationbar/global_widgets/custom_bottom_app_bar.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
      title: Text('Settings'),
    ),
    body: Center(
      child: Text('This is settingsView'),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3,),
    ));
  }
}
