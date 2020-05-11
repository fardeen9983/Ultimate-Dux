import 'package:cookie_store/bottomAppBar.dart';
import 'package:flutter/material.dart';

import 'cookiePage.dart';

void main() => runApp(MyApp());

final orangeMaroonColor = Color(0xFFC88D67),
    greyBlackColor = Color(0xFF545D68),
    orangeColor = Color(0xFFF17532);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              body1: TextStyle(fontFamily: "Varela", color: greyBlackColor)),
          tabBarTheme: TabBarTheme(
              labelColor: orangeMaroonColor,
              labelStyle: TextStyle(fontSize: 21, fontFamily: 'Varela'),
              unselectedLabelStyle:
              TextStyle(fontSize: 21, fontFamily: 'Varela'),
              unselectedLabelColor: Colors.grey.withOpacity(0.4),
              labelPadding: EdgeInsets.only(right: 40))),
      debugShowCheckedModeBanner: false,
      title: 'Cookie Store',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {}),
        title: Text(
          "Pickup",
          style: TextStyle(
              color: Theme
                  .of(context)
                  .textTheme
                  .body1
                  .color,
              fontFamily: 'Varela',
              fontSize: 22),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.orange,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
          ),
          SizedBox(
            height: 15,
          ),
          TabBar(
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Text(
                  "Cookies",
                ),
              ),
              Tab(
                child: Text("Cookie Cake"),
              ),
              Tab(
                child: Text("Ice Cream"),
              ),
            ],
            isScrollable: true,
            controller: _tabController,
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 300,
            width: double.infinity,
            child: TabBarView(
              children: [CookiePage(), CookiePage(), CookiePage()],
              controller: _tabController,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 9,
        backgroundColor: orangeColor,
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
