import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/ProblemPage/result_screen.dart';

import '../MainPage/home_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65.h,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 345.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE4F9F3),
              ),
              child: const Text(
                "문제",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Text(
              "01/15",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 353.w,
              height: 69.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "답 1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 353.w,
              height: 69.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 2",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 353.w,
              height: 69.h,
              decoration: BoxDecoration(
                color: const Color(0xffC7FFEF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 3",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 353.w,
              height: 69.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "답 4",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      iconSize: 35.h,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.home)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff265CFF),
                      minimumSize: Size(105.w, 44.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ResultScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "다음 문제",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
