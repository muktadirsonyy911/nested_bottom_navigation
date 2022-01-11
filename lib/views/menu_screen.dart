import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_bottom_navigationbar/views/language_view.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      height: 280,
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: const Icon(Icons.keyboard_arrow_down_rounded, size: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
              childAspectRatio: 1.1,
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 10,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              controller: ScrollController(keepScrollOffset: false),
              children: [
                _menuItemsWidget(
                    icon: CupertinoIcons.person,
                    title: 'Profile',
                    color: Colors.blue,
                    goTo: () {
                    }),
                _menuItemsWidget(
                    icon: CupertinoIcons.location,
                    title: 'Delivery Address',
                    color: Colors.purple,
                    goTo: () {}),
                _menuItemsWidget(
                    icon: CupertinoIcons.star,
                    title: 'My Review',
                    color: Colors.teal,
                    goTo: () {
                      //Get.toNamed(Routes.MENU);
                    }),
                _menuItemsWidget(
                    icon: CupertinoIcons.globe,
                    title: 'Language',
                    color: Colors.green,
                    goTo: () {
                      Get.to(()=>LanguageView());
                    }),
                _menuItemsWidget(
                  icon: Icons.brightness_6_outlined,
                  color: Colors.lime,
                  title: Get.isDarkMode ? "Light Theme" : "Dark Theme",
                  goTo: () async {
                    //await Get.offAndToNamed(Routes.THEME);
                  },
                ),
                _menuItemsWidget(
                    icon: CupertinoIcons.circle_grid_3x3,
                    title: 'Dashboard',
                    color: Colors.orange,
                    goTo: () {}),
                _menuItemsWidget(
                    icon: CupertinoIcons.square_split_2x2,
                    title: 'My Orders',
                    color: Colors.pink.shade700,
                    goTo: () {}),
                _menuItemsWidget(
                    icon: Icons.logout,
                    title: 'Logout',
                    color: Colors.amber,
                    goTo: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItemsWidget(
      {IconData? icon, String? title, Color? color, VoidCallback? goTo}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              goTo!();
            },
            child: Container(
              height: 55,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: color,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title ?? '',
            style: TextStyle(
                color: Get.theme.focusColor,
                fontWeight: FontWeight.bold,
                fontSize: 11),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
