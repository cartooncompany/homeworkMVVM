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
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;



  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                style: TextStyle(color: const Color(0xff00EDA6), fontSize: 37.w),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
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
              controller: _emailController,
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
              obscureText: _obscureText,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility
                  ), onPressed: (){
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                },
                ),
                border: InputBorder.none,
                labelText: "비밀번호",
                filled: true,
                fillColor: const Color(0xffF4F4F4),
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              controller: _passwordController,
            ),
          ),
          SizedBox(
            height: 381.h,
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
