import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            const SizedBox(
              height: 75,
            ),
            Container(
              width: 400,
              height: 83,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              height: 83,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              height: 83,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              height: 83,
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
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: 35,
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
                    minimumSize: const Size(100, 50),
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
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff265CFF),
                    minimumSize: const Size(100, 50),
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
                          content: const SizedBox(
                            height: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "정답 : 10",
                                  style: TextStyle(fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "오답 : 5",
                                  style: TextStyle(fontSize: 15),
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
                                      minimumSize: const Size(230, 50),
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
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff265CFF),
                                      minimumSize: const Size(230, 50),
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
      ),
    );
  }
}
