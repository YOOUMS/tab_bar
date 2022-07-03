import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tap_bar/Screens/Favorite.dart';
import 'package:tap_bar/Screens/HomePageScreen.dart';
import 'package:tap_bar/Screens/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(physics: ScrollPhysics(), tabs: [
            Tab(child: Text("Home")),
            Tab(child: Text("Favorite")),
            Tab(child: Text("profile"))
          ]),
        ),
        body: TabBarView(children: [HomePageScreen(), Favorite(), Profile()]),
      ),
    );
  }
}
