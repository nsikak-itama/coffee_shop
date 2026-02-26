import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange});
  

  @override
  Widget build(BuildContext context) { 
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[800],
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade100 ,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorderRadius: 8,
        tabs: [
          GButton(
          icon: Icons.home,
          text: "Shop",
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: "Cart",
          )
      ]),
    );
  }
}