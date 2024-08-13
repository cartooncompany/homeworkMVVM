import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/MainPage/home_screen.dart';

class WrongAnswerScreen extends StatefulWidget {
  const WrongAnswerScreen({super.key});

  @override
  State<WrongAnswerScreen> createState() => _WrongAnswerScreenState();
}

class _WrongAnswerScreenState extends State<WrongAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 75.h,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 345.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "문제 설명",
                style: TextStyle(fontSize: 27),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: const Color(0xff68F665)),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "맞은 문제",
                  style: TextStyle(fontSize: 27),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: const Color(0xffFF3951)),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "틀린 문제",
                  style: TextStyle(fontSize: 27),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 345.w,
              height: 205.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffE4F9F3),
              ),
              child: const Text(
                "해설해설해설해설해설해설해설",
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(33.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      iconSize: 33,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      },
                      icon: const Icon(Icons.home)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff265CFF),
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      print("다음 문제");
                    },
                    child: const Text(
                      "다음 문제",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
