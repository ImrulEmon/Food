import 'package:flutter/material.dart';
import 'package:food/screens/card_details.dart';

class FoodCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final double price;

  const FoodCard({Key key, this.title, this.subtitle, this.image, this.price})
      : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardDetail(
              titled: widget.title,
              priced: widget.price,
              imaged: widget.image,
            ),
          ),
        );
      },
      child: Container(
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
                    widget.image,
                    // height: 150,

                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '${widget.title}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '${widget.subtitle}',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\$${widget.price}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
