import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final price;

  const DetailsPage({Key key, this.heroTag, this.foodName, this.price})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String selectedCard = "WEIGHT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Details",
          style: TextStyle(
              fontFamily: 'Monteserrat', fontSize: 18.0, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 82.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.transparent,
              ),
              Positioned(
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height - 100.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                ),
                top: 75.0,
              ),
              Positioned(
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.heroTag),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: 250,
                    )),
                top: 20.0,
                left: (MediaQuery
                    .of(context)
                    .size
                    .width / 2) - 125,
              ),
              Positioned(
                  left: 25.0,
                  right: 25.0,
                  top: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.foodName,
                        style: TextStyle(
                            fontFamily: 'Monteserrat',
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.price,
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Monteserrat',
                                fontSize: 22),
                          ),
                          Container(
                            height: 25.0,
                            width: 1.0,
                            color: Colors.grey,
                          ),
                          Container(
                            width: 125.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Color(0xFF7A9BEE),
                                borderRadius: BorderRadius.circular(17.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(7.0)),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Monteserrat'),
                                ),
                                InkWell(
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(7.0)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFF7A9BEE),
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildInfoCard("WEIGHT", "300", "G"),
                            SizedBox(
                              width: 15.0,
                            ),
                            _buildInfoCard("CALORIES", "267", "CAL"),
                            SizedBox(
                              width: 15.0,
                            ),
                            _buildInfoCard("VITAMINS", "A, B6", "VIT"),
                            SizedBox(
                              width: 15.0,
                            ),
                            _buildInfoCard("AVAIL", "NO", "AV"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 90,
                            child: Center(
                              child: Text(
                                widget.price,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'Monteserrat'),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF1C1428),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.0),
                                    topLeft: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(55),
                                    bottomRight: Radius.circular(55))),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
      onTap: () => selectCard(cardTitle),
      child: AnimatedContainer(
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                    color: selectedCard == cardTitle
                        ? Colors.white
                        : Colors.grey.withOpacity(0.5),
                    fontFamily: 'Monteserrat',
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    info,
                    style: TextStyle(
                        fontSize: 18,
                        color: selectedCard == cardTitle
                            ? Colors.white
                            : Colors.black,
                        fontFamily: 'Monteserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    unit,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedCard == cardTitle
                          ? Colors.white
                          : Colors.black,
                      fontFamily: 'Monteserrat',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: selectedCard == cardTitle ? Color(0xFF7A9BEE) : Colors.white,
            border: Border.all(
                width: 0.75,
                style: BorderStyle.solid,
                color: selectedCard == cardTitle
                    ? Colors.transparent
                    : Colors.grey.withOpacity(0.3))),
      ),
    );
  }

  selectCard(String cardTitle) => this.setState(() => selectedCard = cardTitle);
}
