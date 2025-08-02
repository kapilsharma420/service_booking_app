import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:service_booking_app/pages/chatpage.dart';
import 'package:service_booking_app/pages/homepage.dart';
import 'package:service_booking_app/pages/order.dart';
import 'package:service_booking_app/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Homepage homepage;
  late Order order;
  late ChatPage chatPage;
  late Profile profile;

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homepage = Homepage();
    order = Order();
    chatPage = ChatPage();
    profile = Profile();
    pages = [homepage, order, chatPage, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        height: 50,
        items: [
          Icon(Icons.home, size: 25, color: Colors.black),
          Icon(Icons.shopping_cart, size: 25, color: Colors.black),
          Icon(Icons.chat, size: 25, color: Colors.black),
          Icon(Icons.person, size: 25, color: Colors.black),
        ],
      ),
  body: pages[currentIndex],
    );
  }
}
