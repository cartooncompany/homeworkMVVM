import 'package:flutter/material.dart';

import '../home_screen.dart';

class MyPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBar(
            backgroundColor: const Color(0xffE4F9F3),
            title: const Padding(
              padding: EdgeInsets.all(13.5),
              child: Text(
                "Q-int",
                style: TextStyle(fontSize: 35),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(13.5),
                child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.home),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(35);
}
