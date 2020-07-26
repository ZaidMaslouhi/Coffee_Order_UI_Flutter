import 'package:flutter/material.dart';
import 'package:coffee_order/details_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyHomePage(),
      '/details': (context) => DetailsPage(),
    },
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: <Widget>[
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Welcome, Nour",
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff473D3A),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: Container(
              child: Text(
                'let\'s select the best taste for your next\ncoffee break!',
                style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffB0AAA7),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of the week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17,
                  color: Color(0xff473D3A),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'see all',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15,
                    color: Color(0xffCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 410,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _coffeeListCard(
                  'assets/nncup.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam.',
                  '\$4.99',
                  true,
                ),
                _coffeeListCard(
                  'assets/twotwocup.png',
                  'Caffe Latte',
                  'BrownHouse',
                  'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk.',
                  '\$3.99',
                  false,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore nearby',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17,
                  color: Color(0xff473D3A),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'see all',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15,
                    color: Color(0xffCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg'),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff616161)),
            title: Text('Home', style: TextStyle(color: Color(0xff616161))),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Colors.grey),
            title: Text('Orders', style: TextStyle(color: Colors.grey)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.grey),
            title: Text('Favorite', style: TextStyle(color: Colors.grey)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            title: Text('Profile', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String Price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffDAB68C),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 60),
                        Text(
                          shopName + '\'s',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          coffeeName,
                          style: TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              Price,
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3A4742),
                              ),
                            ),
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
                                  color: isFavorite
                                      ? Colors.red
                                      : Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 25,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff473D3A),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
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
          ],
        ),
      ),
    );
  }
}
