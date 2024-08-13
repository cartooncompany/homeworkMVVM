import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/MainPage/mypage_screen.dart';
import 'package:qintproject/ProblemPage/comment_screen.dart';

import '../MainPage/home_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final int _counter = 1;

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
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffE4F9F3),
              ),
              child: const Text(
                "문제",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "$_counter/15",
              style: const TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 1",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 345.w,
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
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFF3951), width: 3),
                color: const Color(0xffE4F9F3),
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
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff68F665), width: 3),
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
              height: 42.h,
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
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    icon: const Icon(Icons.home),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff00EDA6),
                          minimumSize: Size(67.w, 44.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const CommentScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "해설",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff265CFF),
                          minimumSize: Size(110.w, 44.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("총 문제 수 : 15"),
                                content: SizedBox(
                                  height: 60.h,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "정답 : 10",
                                        style: TextStyle(fontSize: 17.w),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        "오답 : 5",
                                        style: TextStyle(fontSize: 17.w),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: Column(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xff00EDA6),
                                            minimumSize: Size(222.w, 45.h),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pushReplacement(
                                              context,
                                              CupertinoPageRoute(
                                                builder: (context) =>
                                                const HomeScreen(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            "메인 페이지로 이동",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xff265CFF),
                                            minimumSize: Size(222.w, 45.h),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pushReplacement(
                                              context,
                                              CupertinoPageRoute(
                                                builder: (context) =>
                                                const MypageScreen(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            "마이 페이지로 이동",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text(
                          "다음 문제",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
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
