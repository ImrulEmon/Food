import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 265,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 28.0,
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Eybisi.png',
                  height: 150,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Eybisi Salad Mix',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Mix vegetables inggridients',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '\$14.99',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
