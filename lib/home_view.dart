import 'package:flutter/material.dart';
import 'package:nested_bottom_navigationbar/views/chat_view.dart';
import 'package:nested_bottom_navigationbar/views/dashboard_view.dart';
import 'package:nested_bottom_navigationbar/views/profile_view.dart';
import 'package:nested_bottom_navigationbar/views/settings_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentTab = 0;

  final List<Widget> screens = [
    DashboardView(),
    ProfileView(),
    ChatView(),
    SettingsView()
  ];

  final PageStorageBucket pageStorageBucket = PageStorageBucket();

  Widget currentScreen = DashboardView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: pageStorageBucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
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
                  MaterialButton(minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashboardView();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                        color: currentTab == 0 ?Colors.blue:Colors.grey,),
                        Text('Dashboard',
                        style: TextStyle(
                          color: currentTab == 0?Colors.blue:Colors.grey
                        ),)
                      ],
                    ),
                    ),
                  MaterialButton(minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileView();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                          color: currentTab == 1 ?Colors.blue:Colors.grey,),
                        Text('Profile',
                          style: TextStyle(
                              color: currentTab == 1?Colors.blue:Colors.grey
                          ),)
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatView();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                          color: currentTab == 2 ?Colors.blue:Colors.grey,),
                        Text('Chat',
                          style: TextStyle(
                              color: currentTab == 2?Colors.blue:Colors.grey
                          ),)
                      ],
                    ),
                  ),
                  MaterialButton(minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = SettingsView();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings,
                          color: currentTab == 3?Colors.blue:Colors.grey,),
                        Text('Settings',
                          style: TextStyle(
                              color: currentTab == 3?Colors.blue:Colors.grey
                          ),)
                      ],
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
