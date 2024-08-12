import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/LoginPage/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                "회원가입",
                style: TextStyle(color: const Color(0xff00EDA6), fontSize: 43.w),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            //이메일
            width: 345.w,
            height: 52.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
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
              controller: TextEditingController(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00EDA6),
                      minimumSize: Size(66.w, 32.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      print("인증코드 발송");
                    },
                    child: const Text(
                      "Send",
                      style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: "인증번호",
                  filled: true,
                  fillColor: Color(0xffF4F4F4),
                  labelStyle: TextStyle(color: Color(0xffB4B4B4)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
              controller: TextEditingController(),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Container(
            width: 345.w,
            height: 52.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "비밀번호",
                filled: true,
                fillColor: Color(0xffF4F4F4),
                labelStyle: TextStyle(color: Color(0xffB4B4B4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              controller: TextEditingController(),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "비밀번호 재입력",
                filled: true,
                fillColor: Color(0xffF4F4F4),
                labelStyle: TextStyle(color: Color(0xffB4B4B4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              controller: TextEditingController(),
            ),
          ),
          SizedBox(
            height: 198.h,
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
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text(
              "회원가입",
              style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
            ),
          ),
          SizedBox(
            height: 7.h,
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
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                "로그인하러 가기",
                style: TextStyle(fontSize: 16, color: Color(0xff00EDA6)),
              )),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
