import 'package:flutter/material.dart';

class Buble extends StatelessWidget {
    Buble({
    required this.txt,
    // required this.product,
    Key? key,
  }) : super(key: key);
  String? txt;
  // ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:const EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
        margin:const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        height: 50.0,
        decoration:const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)
            )),
        child: Text(
          txt!,
          style:const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}



