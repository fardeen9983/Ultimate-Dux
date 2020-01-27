import 'package:flutter/material.dart';
import 'package:nutrition_app/detailsPage.dart';

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
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: RichText(
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
            ),
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
                          .height - 320.0,
                      child: ListView(
                        children: <Widget>[
                          _buildFoodItme(
                              "assets/plate1.png", "Salmon Bowl", "\$24.00"),
                          _buildFoodItme(
                              "assets/plate2.png", "Salmon Bowl", "\$24.00"),
                          _buildFoodItme(
                              "assets/plate3.png", "Salmon Bowl", "\$24.00"),
                          _buildFoodItme(
                              "assets/plate4.png", "Salmon Bowl", "\$24.00"),
                          _buildFoodItme(
                              "assets/plate5.png", "Salmon Bowl", "\$24.00"),
                          _buildFoodItme(
                              "assets/plate6.png", "Salmon Bowl", "\$24.00"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 65.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 65.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Center(
                            child: Icon(
                              Icons.shopping_basket,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 65.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF1C1428),
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Center(
                            child: Text(
                              "Checkout",
                              style: TextStyle(
                                  fontFamily: 'Monteserrat',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildFoodItme(String img, String foodName, String price) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  DetailsPage(
                    heroTag: img,
                    foodName: foodName,
                    price: price,
                  )));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    tag: img,
                    child: Image.asset(
                      img,
                      height: 75.0,
                      width: 75.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Monteserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Monteserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
