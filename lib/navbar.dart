import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/share.dart';
import 'package:test_app/pages/settings.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    Home(),
    Share(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home),
      Icon(Icons.photo_filter_sharp),
      Icon(Icons.settings),
    ];

    return SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.grey.shade400,
            body: screens[index],
            bottomNavigationBar: CurvedNavigationBar(
              key: navigationKey,
              color: Colors.grey.shade300,
              backgroundColor: Colors.transparent,
              height: 60,
              animationDuration: Duration(milliseconds: 250),
              index: index,
              items: items,
              onTap: (index) {
                setState(() {
                  this.index = index;
                });
              },
            ),
          ),
        )
    );
  }
}
