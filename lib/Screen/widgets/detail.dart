import 'package:ecommerce_app_design/Screen/widgets/add_to_cart_button.dart';
import 'package:ecommerce_app_design/Screen/widgets/add_to_cart.dart';
import 'package:ecommerce_app_design/Screen/widgets/description.dart';
import 'package:ecommerce_app_design/Screen/widgets/items_name.dart';
import 'package:ecommerce_app_design/Screen/widgets/my_header.dart';
import 'package:ecommerce_app_design/models/items.dart';
import 'package:flutter/material.dart';
import 'my_header.dart';
import 'items_name.dart';

class DetailPage extends StatelessWidget {
  final Items items;
  DetailPage(this.items);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeader(items.imageUrl),
                ItemName(items.title, items.buttonText),
                DeliveryTime(),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                DesCription(),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                AddtoCart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
