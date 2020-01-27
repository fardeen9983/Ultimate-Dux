import 'package:cookie_store/main.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      elevation: 9.0,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: orangeColor,
                    size: 30,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: greyBlackColor,
                    size: 30,
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: greyBlackColor,
                    size: 30,
                  ),
                  Icon(
                    Icons.shopping_basket,
                    color: greyBlackColor,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
