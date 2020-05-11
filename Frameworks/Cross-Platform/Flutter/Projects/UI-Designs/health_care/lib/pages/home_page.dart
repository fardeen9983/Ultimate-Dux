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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _buildNotificationCard(),
                  _buildNextAppointmentTitle("Next Appointment"),
                  _buildNextAppointmentInfo(),
                  _buildNextAppointmentTitle("Specialist in your Area"),
                  _buildAreaSpecialists(),
                  _buildAreaSpecialists(),
                  _buildAreaSpecialists(),
                  _buildAreaSpecialists(),
                ],
              ),
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

  _buildNotificationCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: lightColor, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(
          LineAwesomeIcons.calendar_check_o,
          color: Colors.white,
          size: 32,
        ),
        title: Text(
          "Your visit with \nDr.Natasha",
          style: notificationTitleStyle,
        ),
        trailing: OutlineButton(
          onPressed: () {},
          color: Colors.transparent,
          borderSide: BorderSide(color: Colors.white, width: 1),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
          child: Text(
            "Review & Add notes",
            style: notificationButtonStyle,
          ),
        ),
      ),
    );
  }

  _buildNextAppointmentTitle(title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: nextAppointmentTitleStyle,
          ),
          Text(
            "See All",
            style: nextAppointmentSubtitleStyle,
          )
        ],
      ),
    );
  }

  _buildNextAppointmentInfo() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(USER_PROFILE_IMAGE),
                radius: 36,
              ),
              SizedBox(
                width: 15,
              ),
              RichText(
                  text: TextSpan(
                      text: "Dr. Bruce Banner",
                      style: appointmentMainStyle,
                      children: [
                        TextSpan(
                            text: "\nSunday,May 5th at 8:00 pm",
                            style: appointmentDateStyle),
                        TextSpan(
                            text: "\n53/4 Chadni Chowk to China",
                            style: appointmentDateStyle)
                      ]))
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Divider(
            color: Colors.grey[200],
            height: 3,
            thickness: 5,
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _iconBuilder(LineAwesomeIcons.check_circle, "Check In"),
              _iconBuilder(LineAwesomeIcons.times_circle, "Cancel"),
              _iconBuilder(LineAwesomeIcons.calendar_times_o, "Calendar"),
              _iconBuilder(LineAwesomeIcons.compass, "Directions"),
            ],
          )
        ],
      ),
    );
  }

  _iconBuilder(icon, title) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 28, color: Colors.black),
        SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w300, color: Colors.black),
        )
      ],
    );
  }

  _buildAreaSpecialists() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 6),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(USER_PROFILE_IMAGE),
                radius: 36,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: "wellness\n",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.3),
                          children: [
                            TextSpan(
                              text: "Dr. Bruce Banner",
                              style: appointmentMainStyle,
                            ),
                            TextSpan(
                                text: "\nSunday,May 5th at 8:00 pm",
                                style: appointmentDateStyle),
                            TextSpan(
                                text: "\n53/4 Chadni Chowk to China",
                                style: appointmentDateStyle)
                          ])),
                  SizedBox(
                    height: 6,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: purpleGradient,
                          borderRadius: BorderRadius.circular(80)),
                      child: Container(
                        constraints:
                        BoxConstraints(minHeight: 36, minWidth: 88),
                        alignment: Alignment.center,
                        child: Text(
                          "Book Visit",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            LineAwesomeIcons.heart,
            color: lightColor,
            size: 36,
          )
        ],
      ),
    );
  }
}
