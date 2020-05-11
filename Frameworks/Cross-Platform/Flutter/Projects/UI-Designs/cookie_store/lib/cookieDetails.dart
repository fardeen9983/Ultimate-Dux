import 'package:cookie_store/bottomAppBar.dart';
import 'package:cookie_store/main.dart';
import 'package:flutter/material.dart';

class CookieDetails extends StatefulWidget {
  final img, name, price;

  const CookieDetails({Key key, this.img, this.name, this.price})
      : super(key: key);

  @override
  _CookieDetailsState createState() => _CookieDetailsState();
}

class _CookieDetailsState extends State<CookieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 24, color: greyBlackColor),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: orangeColor,
                size: 30,
              ),
              onPressed: () {})
        ],
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: greyBlackColor,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Cookie",
                style: TextStyle(
                    color: orangeMaroonColor,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Hero(
              tag: widget.img,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(widget.img), fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.price,
              style: TextStyle(color: orangeMaroonColor, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.name,
              style: TextStyle(color: greyBlackColor, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Cold, creamy ice cream sandwiched between delicious deluxe cookies.\nPick your favourite deluxe cookies and ice cream flavour",
              style:
                  TextStyle(color: greyBlackColor.withAlpha(180), fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: orangeColor),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: orangeColor,
        onPressed: () {},
        child: Icon(
          Icons.fastfood,
        ),
      ),
    );
  }
}
