import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_bottom_navigationbar/global_widgets/custom_bottom_app_bar.dart';
import 'package:nested_bottom_navigationbar/views/dashboard_details_view.dart';

class HomeView extends StatelessWidget {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child:ElevatedButton(
            onPressed: (){
              Get.to(DashboardDetailsView());
            },

            child: Text("Go to next"),
          ),
        ),
      ),
      // body: PageStorage(
      //   child: currentScreen,
      //   bucket: pageStorageBucket,
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 0,),
    );
  }
}