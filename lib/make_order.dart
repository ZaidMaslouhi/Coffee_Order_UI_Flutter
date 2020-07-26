import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => new _OrderState();
}

class _OrderState extends State<Order> {
  String temperature = 'Hot';
  int quantity = 1;
  final List<String> cups = ['1', '2', '3', '4'];
  final List<String> sizes = ['S', 'M', 'L', 'XL'];
  String cup;
  String size;
  int sugar;
  int ice;
  bool cream = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.close, color: Colors.grey, size: 30),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Temperature',
                  style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff726B68),
                  ),
                ),
                Text(
                  'Quantity',
                  style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff726B68),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ToggleSwitch(
                  minWidth: 50,
                  cornerRadius: 20,
                  activeBgColor: Colors.brown[700],
                  activeTextColor: Colors.white,
                  inactiveBgColor: Colors.white70,
                  inactiveTextColor: Colors.grey[800],
                  labels: ['Hot', 'Cold'],
                  onToggle: (index) {
                    setState(() => temperature = (index == 1) ? 'Cold' : 'Hot');
                    print(temperature);
                  },
                ),
                Counter(
                  initialValue: quantity,
                  minValue: 1,
                  maxValue: 10,
                  step: 1,
                  decimalPlaces: 0,
                  color: Color(0xffD4AC7C),
                  textStyle: TextStyle(
                    color: Colors.brown[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  buttonSize: 25,
                  onChanged: (value) {
                    setState(() {
                      quantity = value;
                    });
                    print("quantity : " + quantity.toString());
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 0.5,
              color: Color(0xffC6C4C4),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Select Cup',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff726B68),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(18),
                          right: Radius.circular(18),
                        ),
                        color: Colors.grey[200],
                      ),
                      width: 60,
                      height: 35,
                      child: DropdownButton(
                        underline: SizedBox(height: 0),
                        icon: Icon(Icons.keyboard_arrow_down),
                        value: cup ?? '1',
                        items: cups.map((cp) {
                          return DropdownMenuItem(
                            value: cp,
                            child: Text(
                              '$cp',
                              style: TextStyle(
                                fontFamily: 'nunito',
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[900],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (val) => setState(() => cup = val),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Select Size',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff726B68),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(18),
                          right: Radius.circular(18),
                        ),
                        color: Colors.grey[200],
                      ),
                      width: 60,
                      height: 35,
                      child: DropdownButton(
                        underline: SizedBox(height: 0),
                        icon: Icon(Icons.keyboard_arrow_down),
                        value: size ?? 'M',
                        items: sizes.map((sz) {
                          return DropdownMenuItem(
                            value: sz,
                            child: Text(
                              '$sz',
                              style: TextStyle(
                                fontFamily: 'nunito',
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[900],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (val) => setState(() => size = val),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 0.5,
              color: Color(0xffC6C4C4),
            ),
            SizedBox(height: 15),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Feather.box, size: 40, color: Colors.brown[700]),
                        Text(
                          'Sugar',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Counter(
                          initialValue: sugar ?? 0,
                          minValue: 0,
                          maxValue: 10,
                          step: 1,
                          decimalPlaces: 0,
                          color: Color(0xffD4AC7C),
                          textStyle: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 15,
                          ),
                          buttonSize: 30,
                          onChanged: (value) {
                            setState(() {
                              sugar = value;
                            });
                            print("sugar : " + sugar.toString());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Feather.package,
                            size: 40, color: Colors.brown[700]),
                        Text(
                          'Ice',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Counter(
                          initialValue: ice ?? 0,
                          minValue: 0,
                          maxValue: 5,
                          step: 1,
                          decimalPlaces: 0,
                          color: Color(0xffD4AC7C),
                          textStyle: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 15,
                          ),
                          buttonSize: 30,
                          onChanged: (value) {
                            setState(() {
                              ice = value;
                            });
                            print("ice : " + sugar.toString());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Feather.shield,
                            size: 40, color: Colors.brown[700]),
                        Text(
                          'Cream',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Counter(
                          initialValue: cream ? 1 : 0,
                          minValue: 0,
                          maxValue: 1,
                          step: 1,
                          decimalPlaces: 0,
                          color: Color(0xffD4AC7C),
                          textStyle: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 15,
                          ),
                          buttonSize: 30,
                          onChanged: (value) {
                            setState(() {
                              cream = (value == 1) ? true : false;
                            });
                            print("cream : " + cream.toString());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 0.5,
              color: Color(0xffC6C4C4),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Colors.brown[700],
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '\$9.99',
                      style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD3AC7E),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff473D3A),
                      ),
                      child: Center(
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
