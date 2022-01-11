import 'package:flutter/material.dart';

import '../global_widgets/custom_bottom_app_bar.dart';

class DashboardDetailsView extends StatelessWidget {
  const DashboardDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('DashboardDetailsView'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Text('DashboardDetails working'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 0,),
    ),

    );
  }
}
