import 'package:flutter/material.dart';

import '../models/product_models.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    super.key,
  });
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0,
                offset: const Offset(10, 10))
          ]),
        ),
        Stack(
          alignment: Alignment.topRight, 
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Positioned(
                right: 32,
                top: -60,
                child: Image.network(
                  product.image,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            const Icon(Icons.favorite_outline),
            const Positioned(
              left: 40, 
              bottom: 0, 
              child: Icon(Icons.safety_check),
            ),
          ],
        ),
        Text(product.title.substring(0,6),),
        Text(r'$' '${product.price.toString()}',style: const TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}
