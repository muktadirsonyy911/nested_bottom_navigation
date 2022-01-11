import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_bottom_navigationbar/home_view.dart';
import 'package:nested_bottom_navigationbar/views/dashboard_view.dart';
import 'package:nested_bottom_navigationbar/views/menu_screen.dart';
import 'package:nested_bottom_navigationbar/views/profile_view.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({Key? key, this.selectedIndex}) : super(key: key);
  final int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 7.0,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    if (selectedIndex != 0) {
                      Get.off(HomeView());
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color:
                                selectedIndex == 0 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    if (selectedIndex != 1) {
                      Get.off(ProfileView());
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: selectedIndex == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color:
                                selectedIndex == 1 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    if (selectedIndex != 2) {
                      Get.off(() => DashboardView());
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: selectedIndex == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                            color:
                                selectedIndex == 2 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    if (selectedIndex != 3) {
                      Get.bottomSheet(MenuScreen(), isScrollControlled: true);
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: selectedIndex == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            color:
                                selectedIndex == 3 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
