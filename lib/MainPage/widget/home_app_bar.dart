import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../mypage_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: const EdgeInsets.all(13.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    width: 72.w,
                    height: 29.h,
                    'assets/images/logo/Q-int-logo.png'
                  ),
                  IconButton(
                    iconSize: 30.w,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const MypageScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
