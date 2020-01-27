import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Healthy",
                      style: TextStyle(
                          fontFamily: 'Monteserrat',
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " Food",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Monteserrat',
                        fontSize: 25.0,
                      ))
                ])),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(75.0))),
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 185.0,
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 300.0,
                      child: ListView(
                        children: <Widget>[],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildFoodItme(String img, String foodName, String price) {

  }
}
