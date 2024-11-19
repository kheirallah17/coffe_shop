import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 36, 36, 36),
        boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            ),]
      ),
     child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.home_outlined,
        color: Colors.orange,
        size: 35,
        ),
        Icon(Icons.favorite_outline,
        color: Colors.white,
        size: 35,
        ),
        Icon(Icons.notifications_outlined,
        color: Colors.white,
        size: 35,
        ),
        Icon(Icons.person_2_outlined,
        color: Colors.white,
        size: 35,
        ),
      ],
     ),
    );
  }
}