import 'package:flutter/material.dart';
import 'package:qintproject/LoginPage/signup_screen.dart';

import '../MainPage/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Color(0xff00EDA6), fontSize: 50),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "이메일",
                hintText: "이메일을 입력하세요.",
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
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "비밀번호",
                hintText: "비밀번호를 입력하세요.",
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
          const SizedBox(
            height: 500,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff00EDA6),
              minimumSize: const Size(345, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
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
                minimumSize: const Size(345, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignupScreen();
                  },
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
