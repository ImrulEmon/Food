import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/widgets/food_card.dart';
import 'package:food/widgets/search_bar.dart';
import '../constants/colors.dart';
import '../widgets/category_title.dart';

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
            SvgPicture.asset(
              "assets/images/Menu.svg",
              height: 31,
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
          SizedBox(
            height: 60.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(
                  title: "All",
                ),
                CategoryTitle(title: "Healthy food", active: true),
                CategoryTitle(title: "Junk food"),
                CategoryTitle(title: "Dessert"),
                CategoryTitle(title: "Indian"),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          bottom: 15.0,
          left: 10.0,
          right: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            unselectedFontSize: 14,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 28.0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 28.0,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 28.0,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
