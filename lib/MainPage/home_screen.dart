import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/MainPage/widget/home_app_bar.dart';
import 'package:qintproject/ProblemPage/test_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 27.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  Container(
                    width: 345.w,
                    height: 84.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: const Color(0xff00EDA6),
                        ),
                        color: const Color(0xffC7FFEF),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -17.h,
                    right: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 132.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    top: 30.h,
                    right: 130.w,
                    child: Text(
                      "프론트엔드",
                      style: TextStyle(color: const Color(0xff00EDA6), fontSize: 20.w),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  Container(
                    width: 345.w,
                    height: 84.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -30.h,
                    left: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 133.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    top: 28.h,
                    right: 147.w,
                    child: Text(
                      "벡앤드",
                      style: TextStyle(color: const Color(0xff00EDA6), fontSize: 20.w),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  Container(
                    width: 345.w,
                    height: 84.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -32.h,
                    right: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 134.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    top: 28.h,
                    right: 155.w,
                    child: Text(
                      "iOS",
                      style: TextStyle(color: const Color(0xff00EDA6), fontSize: 20.w),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  Container(
                    width: 345.w,
                    height: 84.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F9F3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: -17.h,
                    left: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 135.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    top: 28.h,
                    right: 150.w,
                    child: Text(
                      "플러터",
                      style: TextStyle(color: const Color(0xff00EDA6), fontSize: 20.w,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text(
            "카테고리를 한 개 이상 선택해주세요!",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00EDA6),
            minimumSize: Size(345.w, 52.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
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
