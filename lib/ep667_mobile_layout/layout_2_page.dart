import 'package:flutter/material.dart';

import 'mobile_layout_app.dart';

class Layout2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Epirus\nRregion"),
                Text("Grece"),
              ],
            ),
            Divider(
              thickness: 1.2,
              color: mobileLayoutAppColor,
            ),
          ],
        ),
      ),
    );
  }
}
