import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/widgets/search_bar.dart';
import '../constants/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fdBGColor,
      appBar: AppBar(
        backgroundColor: fdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/profile.png',
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Enjoy your favourite food delicious',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900,
                  height: 2.0,
                ),
              ),
            ),
          ),
          SearchInput(),
        ],
      ),
    );
  }
}
