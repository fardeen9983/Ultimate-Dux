import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              body1:
              TextStyle(fontFamily: "Varela", color: Color(0xFF545D68)))),
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

class _MyHomePageState extends State<MyHomePage> {
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
          )
        ],
      ),
    );
  }
}
