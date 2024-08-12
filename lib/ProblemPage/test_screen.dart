import 'package:flutter/material.dart';
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
            const Text(
              "01/15",
              style: TextStyle(fontSize: 20),
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
                ),
              ),
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
                color: const Color(0xffC7FFEF),
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
        padding: const EdgeInsets.all(13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
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
      ),
    );
  }
}
