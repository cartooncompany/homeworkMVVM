import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/LoginPage/signup_screen.dart';

import '../MainPage/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "로그인",
                style: TextStyle(color: const Color(0xff00EDA6), fontSize: 43.w),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "이메일",
                filled: true,
                fillColor: Color(0xffF4F4F4),
                labelStyle: TextStyle(color: Color(0xffB4B4B4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _controller,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 345.w,
            height: 76.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "비밀번호",
                filled: true,
                fillColor: Color(0xffF4F4F4),
                labelStyle: TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              controller: _controller,
            ),
          ),
          SizedBox(
            height: 385.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff00EDA6),
              minimumSize: Size(345.w, 52.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: const Text(
              "로그인",
              style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE4F9F3),
                minimumSize: Size(345.w, 52.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const SignupScreen(),
                    ));
              },
              child: const Text(
                "회원가입하러 가기",
                style: TextStyle(fontSize: 16, color: Color(0xff00EDA6)),
              )),
        ],
      ),
    );
  }
}
