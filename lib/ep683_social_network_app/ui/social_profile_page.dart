import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SocialProfilePage extends StatefulWidget {
  SocialProfilePage({Key key}) : super(key: key);

  @override
  _SocialProfilePageState createState() => _SocialProfilePageState();
}

class _SocialProfilePageState extends State<SocialProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          minHeight: MediaQuery.of(context).size.height / 3,
          body: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              NetworkImage("https://cdn.pixabay.com/photo/2019/11/30/17/53/girl-4663792_960_720.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.darken))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                            Text(
                              "DREAMWALKER",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.more_horiz),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
              ),
              Positioned(
                  top: 360,
                  left: 0,
                  right: 0,

                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 72),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  CircleAvatar(
                    radius: 24,
                    child: Icon(Icons.send),
                  ),
                  CircleAvatar(
                      radius: 42,
                    backgroundColor: Theme.of(context).accentColor,
                    child: Icon(Icons.favorite,
                    size: 38,),
                  ),
                  CircleAvatar(
                      radius: 24,
                    child: Icon(Icons.book),
                  ),
                ],),
              ))
            ],
          ),
          backdropColor: Theme.of(context).cardColor,
          color: Theme.of(context).cardColor,
          panel: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}