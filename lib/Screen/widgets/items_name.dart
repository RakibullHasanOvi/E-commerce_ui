import 'package:ecommerce_app_design/models/items.dart';
import 'package:flutter/material.dart';

class ItemName extends StatelessWidget {
  final String title;
  final String buttonText;
  ItemName(
    this.title,
    this.buttonText,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              child: Row(
                children: [
                  Text(
                    '6 pieces',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_half_outlined,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
