import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:restaurant_ui/colors.dart';
import 'package:restaurant_ui/views/home_page.dart';
import 'package:restaurant_ui/views/profile_page.dart';



class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        backgroundColor: Colors.grey.shade300,
        context,
        screens: const [
          HomePage(),
          ProfilePage(),

        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style7,


      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorSecondary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        activeColorPrimary: red,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColorPrimary: red,
        activeColorSecondary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),


    ];
  }
}
