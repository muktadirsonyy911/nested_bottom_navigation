import 'package:flutter/material.dart';
import 'package:nested_bottom_navigationbar/global_widgets/custom_bottom_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ProfileView'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const Center(
          child: Text('This is profileView'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1,),
      ),
    );
  }
}
