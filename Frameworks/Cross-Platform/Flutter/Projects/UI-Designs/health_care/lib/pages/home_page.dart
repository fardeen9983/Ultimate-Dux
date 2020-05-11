import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/misc/styleguide.dart';
import 'package:healthcare/misc/utils.dart';
import 'package:healthcare/widgets/moods.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void onTap(int value) => this.setState(() => _selectedIndex = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                _buildBackGroundCover(),
                _buildGreetings(),
                _buildMoodsHolder()
              ],
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.home,
                size: 30.0,
              ),
              title: Text("1")),
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.search,
                size: 30.0,
              ),
              title: Text("2")),
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.gratipay,
                size: 30.0,
              ),
              title: Text("3")),
        ],
        currentIndex: _selectedIndex,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  _buildBackGroundCover() {
    return Container(
      height: 260,
      decoration: BoxDecoration(
          gradient: purpleGradient,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
    );
  }

  _buildGreetings() {
    return Positioned(
        left: 20.0,
        bottom: 90.0,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hi Dan", style: greetingsTitleStyle),
              SizedBox(
                height: 10,
              ),
              Text(
                "How are you feeling today?",
                style: greetingsSubtitleStyle,
              )
            ]));
  }

  _buildMoodsHolder() {
    return Positioned(
      bottom: -45,
      child: Container(
          height: 100,
          width: MediaQuery
              .of(context)
              .size
              .width - 40,
          padding: EdgeInsets.all(10),
          child: MoodsWidget(),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 5.5, blurRadius: 5.5)
              ])),
    );
  }
}
