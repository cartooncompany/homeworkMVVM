import 'package:flutter/material.dart';
import 'package:qintproject/ProblemPage/test_screen.dart';
import 'mypage_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Q-int",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MypageScreen(),
                    ));
              },
              icon: const Icon(Icons.person))
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: 400,
              height: 85,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 85,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3 , color: const Color(0xff00EDA6)),
                        color: const Color(0xffC7FFEF),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -30,
                    right: 0,
                    child: Image.asset(
                      'assets/images/frame/Frame 132.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Positioned(
                    top: 28,
                    right: 150,
                    child: Text(
                      "프론트엔드",
                      style: TextStyle(color: Color(0xff00EDA6), fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 400,
              height: 85,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 85,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/frame/Frame 133.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Positioned(
                    top: 28,
                    right: 170,
                    child: Text(
                      "벡앤드",
                      style: TextStyle(color: Color(0xff00EDA6), fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 400,
              height: 85,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 85,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -32,
                    right: 0,
                    child: Image.asset(
                      'assets/images/frame/Frame 134.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Positioned(
                    top: 28,
                    right: 175,
                    child: Text(
                      "iOS",
                      style: TextStyle(color: Color(0xff00EDA6), fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 400,
              height: 85,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 85,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/frame/Frame 135.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Positioned(
                    top: 28,
                    right: 170,
                    child: Text(
                      "플러터",
                      style: TextStyle(color: Color(0xff00EDA6), fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "카테고리를 한 개 이상 선택해주세요!",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00EDA6),
            minimumSize: const Size(370, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const TestScreen(),
              ),
            );
          },
          child: const Text(
            "시작하기",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
