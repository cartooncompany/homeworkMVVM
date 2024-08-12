import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:qintproject/LoginPage/login_screen.dart';
import 'package:qintproject/ProblemPage/wronganswer_screen.dart';
import 'home_screen.dart';

class MypageScreen extends StatefulWidget {
  const MypageScreen({super.key});

  @override
  State<MypageScreen> createState() => _MypageScreenState();
}

class _MypageScreenState extends State<MypageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4F9F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffE4F9F3),
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
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  top: 5,
                  left: 10,
                  child: Text(
                    "나의 정답률",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 30,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: const Color(0xff68F665),
                  ),
                ),
                const Positioned(
                  top: 71,
                  left: 53,
                  child: Text(
                    "정답",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 30,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: const Color(0xffFF3951),
                  ),
                ),
                const Positioned(
                  top: 96,
                  left: 53,
                  child: Text(
                    "오답",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Positioned(
                  top: 130,
                  right: 20,
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: PieChart(
                      PieChartData(
                        sections: getSections(),
                        centerSpaceRadius: 65,
                        borderData: FlBorderData(
                          show: false,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(400, 75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WrongAnswerScreen(),
                      ));
                },
                child: const Text(
                  "틀린 문제 다시보기 ↺",
                  style: TextStyle(fontSize: 28),
                )),
            const SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("오류 신고 이메일: 1234@dsm.hs.kr"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text("로그아웃")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return [
      PieChartSectionData(
        color: const Color(0xff68F665),
        value: 50,
        title: '75%',
        radius: 65,
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 20,
        title: '25%',
        radius: 65,
      ),
    ];
  }
}
