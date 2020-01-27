import 'package:cookie_store/cookieDetails.dart';
import 'package:cookie_store/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height - 50,
              width: MediaQuery.of(context).size.width - 30,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.6,
                primary: false,
                children: <Widget>[
                  _buildCard("Cookie Mint", "\$3.99", "assets/cookiemint.jpg",
                      false, false, context),
                  _buildCard("Cookie Cream", "\$5.99", "assets/cookiecream.jpg",
                      false, false, context),
                  _buildCard("Cookie Classic", "\$1.99",
                      "assets/cookieclassic.jpg", false, true, context),
                  _buildCard("Cookie Choco", "\$3.99", "assets/cookiechoco.jpg",
                      true, false, context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String img, bool added, bool fav,
      BuildContext context) =>
      Padding(
        padding:
        const EdgeInsets.only(right: 5.0, left: 5.0, bottom: 5.0, top: 5),
        child: InkWell(
            onTap: () =>
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CookieDetails(
                              name: name,
                              img: img,
                              price: price,
                            ))),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ]),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, right: 8.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          fav ? Icons.favorite : Icons.favorite_border,
                          color: orangeColor,
                        )
                      ],
                    ),
                  ),
                  Hero(
                      tag: img,
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(img), fit: BoxFit.contain)),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    price,
                    style: TextStyle(color: orangeColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    name,
                    style: TextStyle(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        if (!added) ...[
                          Icon(
                            Icons.shopping_basket,
                            color: orangeColor,
                            size: 18,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 14),
                          )
                        ] else
                          ...[
                            Icon(
                              Icons.remove_circle_outline,
                              color: orangeColor,
                              size: 18,
                            ),
                            Text(
                              "3",
                              style: TextStyle(color: orangeColor),
                            ),
                            Icon(
                              Icons.add_circle_outline,
                              color: orangeColor,
                              size: 18,
                            ),
                          ]
                      ],
                    ),
                  )
                ],
              ),
            )),
      );
}
