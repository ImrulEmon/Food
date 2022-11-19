import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CardDetail extends StatefulWidget {
  final String titled;
  final String subtitled;
  final String imaged;
  final double priced;
  const CardDetail({this.titled, this.subtitled, this.imaged, this.priced});

  @override
  State<CardDetail> createState() =>
      _CardDetailState(titled, subtitled, imaged, priced);
}

class _CardDetailState extends State<CardDetail> {
  final String titled;
  final String subtitled;
  final String imaged;
  final double priced;

  _CardDetailState(this.titled, this.subtitled, this.imaged, this.priced);

  int quantity = 1;

  void _addQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _revQuantity() {
    if (quantity >= 2) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fdBGColor,
      appBar: AppBar(
        backgroundColor: fdBGColor,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20.0,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        '$titled',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '\$$priced',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Choice quantity',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: _revQuantity,
                            icon: Icon(Icons.remove),
                          ),
                          Text(
                            quantity.toString(),
                            style: TextStyle(
                              fontSize: 24.0,
                            ),
                          ),
                          IconButton(
                            onPressed: _addQuantity,
                            icon: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(imaged),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 26.0, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: RatingGold,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: RatingGold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        'This Italian salad is full of all the right flavors and textures: crisp lettuce, crunchy garlic croutons, and zingy pepperoncini. It’s covered in punchy, herby Italian vinaigrette that makes the flavors sing! It can play sidekick to just about anything.',
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 2.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: (() {}),
                              child: Text(
                                'Add Now',
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (() {}),
                              child: Text(
                                'Add Chart',
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
