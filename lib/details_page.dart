import 'package:coffee_order/make_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => new _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height) / 2 + 25,
                left: 15,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 2) - 50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: <Widget>[
                      Text(
                        'Preparation Time',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff726B68),
                        ),
                      ),
                      SizedBox(height: 0.7),
                      Text(
                        '5 min',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14,
                          color: Color(0xffCFC4C4),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xffC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ingredients',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff726B68),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            buildImgredientsItem(
                              'Water',
                              Icon(
                                Feather.droplet,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xff6FC5DA),
                            ),
                            buildImgredientsItem(
                              'Brewed Espresso',
                              Icon(
                                Feather.target,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xff615955),
                            ),
                            buildImgredientsItem(
                              'Sugar',
                              Icon(
                                Feather.box,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xffF39595),
                            ),
                            buildImgredientsItem(
                              'Tofee Nut Syrup',
                              Icon(
                                MaterialCommunityIcons.peanut_outline,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xff8FC28A),
                            ),
                            buildImgredientsItem(
                              'Natural Flavors',
                              Icon(
                                MaterialCommunityIcons.leaf_maple,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xff3B8079),
                            ),
                            buildImgredientsItem(
                              'Vanilla Syrup',
                              Icon(
                                MaterialCommunityIcons.flower_tulip_outline,
                                size: 20,
                                color: Colors.white,
                              ),
                              Color(0xffF8B870),
                            ),
                            SizedBox(height: 25),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xffC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nutrition Information',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff726B68),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Calories',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffD4D3D2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            '250',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff716966),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Proteins',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffD4D3D2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            '10g',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff716966),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            'Caffeine',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffD4D3D2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            '150mg',
                            style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff716966),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xffC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color(0xff473D3A),
                          ),
                          child: InkWell(
                            onTap: () {
                              _showOrderPanel();
                            },
                            child: Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                left: MediaQuery.of(context).size.width / 4,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pinkcup.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: 300,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: Text(
                              'Caramel Macchiato',
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width / 2 + 20,
                        child: Text(
                          'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 13,
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff473D3A),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/5',
                                    style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13,
                                      color: Color(0xff7C7573),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 80,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xffF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/man.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xffF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/model.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: Color(0xffF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/model2.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),
                              Text(
                                '+ 25 more',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showOrderPanel() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Order(),
        );
      },
    );
  }

  buildImgredientsItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: iconName,
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: 60,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 12,
                  color: Color(0xffC2C0C0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
