import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title,required this.FirstIcon,required this.SecondIcon});
String title;
IconData FirstIcon;
IconData SecondIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      color: const Color(0xffFFFFFFFF),
      ),
      width: double.infinity,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(FirstIcon),
          Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Icon(SecondIcon),
        ],
      ),
    );
  }
}