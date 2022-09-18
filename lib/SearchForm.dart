import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, top: 20),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              // margin: EdgeInsets.symmetric(
              //   horizontal: 35,
              //   vertical: 15,
              // ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/Search.jpeg",
                        width: 25,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "Search..."),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 50,
                width: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/Filter.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
