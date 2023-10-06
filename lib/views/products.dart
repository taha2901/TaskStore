import 'package:flutter/material.dart';
import 'package:store_gdsc/widgets/buble.dart';
import 'package:store_gdsc/widgets/textfield.dart';
import '../models/product_models.dart';
import '../provider/fav_provider.dart';
import '../services/get_all_products.dart';
import '../widgets/card.dart';

class Products extends StatefulWidget {
   const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcom back',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Falcom thought',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.store,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            const CustomTextField(),
            const SizedBox(
              height: 50.0,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFE7EAEF),
                  ),
                  width: double.infinity,
                  height: 150,
                ),
                Positioned(
                  left: 250,
                  top: -60,
                  child: Image.asset(
                    'assets/12345.png',
                    height: 220,
                    width: 150,
                  ),
                ),
                const Positioned(
                  left: 90,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        'Stop with us!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Get 40% off for all items',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Shop Now',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.black,
                            size: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Buble(txt: 'All'),
                  Buble(txt: 'Dresses'),
                  Buble(txt: 'T-shirt'),
                  Buble(txt: 'Shoes'),
                  Buble(txt: 'Trouthers'),
                  Buble(txt: 'Cap'),
                  Buble(txt: 'pormoda'),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: FutureBuilder<List<ProductModel>>(
                future: AllProductsService().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 65),
                      child: GridView.builder(
                        itemCount: products.length,
                        clipBehavior: Clip.none,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1.2,
                          mainAxisSpacing: 100,
                        ),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            product: products[index],
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_outline),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
        ],
      ),
    );
  }
}
