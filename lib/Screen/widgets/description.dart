import 'package:flutter/material.dart';

class DesCription extends StatelessWidget {
  const DesCription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'The best cupcakes in the world.'
            'We made them as delicious as'
            'your mom makes them'
            'The best cupcakes in the world.'
            'We made them as delicious as'
            'your mom makes them'
            'The best cupcakes in the world.'
            'We made them as delicious as'
            'your mom makes them',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
