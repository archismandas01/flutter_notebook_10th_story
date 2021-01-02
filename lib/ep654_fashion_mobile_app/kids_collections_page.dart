import 'package:flutter/material.dart';

class KidsCollectionsPage extends StatefulWidget {
  @override
  _KidsCollectionsPageState createState() => _KidsCollectionsPageState();
}

class _KidsCollectionsPageState extends State<KidsCollectionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _homeIdx,
        onTap: (homeIndex) {
          setState(() {
            _homeIdx = homeIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: ""),
        ],
      ),
    );
  }
}