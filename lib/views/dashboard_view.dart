import 'package:flutter/material.dart';

import '../global_widgets/custom_bottom_app_bar.dart';
class DashboardView extends StatelessWidget {
   DashboardView({Key? key}) : super(key: key);
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Profile"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 2,),
    );
  }
}
