import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        labelText: 'What are you looking for...',
        prefixIcon: Icon(Icons.search,size: 40,),
        fillColor: Color(0xffFFF7F7F7),
        filled: true,
      ),
    );
  }
}
