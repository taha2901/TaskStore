import 'package:flutter/material.dart';
import 'package:store_gdsc/views/favourite.dart';
import 'package:store_gdsc/views/on_boarding.dart';
import 'package:store_gdsc/views/products.dart';
import 'package:store_gdsc/widgets/buttons.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffffffffff),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomButton(
              FirstIcon: Icons.person,
              SecondIcon: Icons.chevron_right,
              title: 'Account Information',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.store,
              SecondIcon: Icons.chevron_right,
              title: 'My Order',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.lock,
              SecondIcon: Icons.chevron_right,
              title: 'Privacy Policy',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.donut_large,
              SecondIcon: Icons.chevron_right,
              title: 'About Store',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.notification_important,
              SecondIcon: Icons.chevron_right,
              title: 'Notification',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.person_2,
              SecondIcon: Icons.chevron_right,
              title: 'Sign In',
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              FirstIcon: Icons.settings,
              SecondIcon: Icons.chevron_right,
              title: 'Settings',
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
            icon:  IconButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OnBoarding();
              },));
            }, icon: const Icon(Icons.chat),),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  IconButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Favourite();
              },));
            }, icon: const Icon(Icons.favorite_outline),),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  IconButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Products();
              },));
            }, icon: const Icon(Icons.person),),
            backgroundColor: _currentIndex == 0 ? Colors.black : Colors.white,
            label: '',
          ),
        ],
      ),
    );
  }
}
