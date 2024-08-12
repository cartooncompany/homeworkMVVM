import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          const SizedBox(
            height: 100,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "회원가입",
                style: TextStyle(color: Color(0xff00EDA6), fontSize: 50),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            //이메일
            width: 400,
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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00EDA6),
                      minimumSize: const Size(50, 45),
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
            width: 400,
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
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 400,
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
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 400,
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
          const SizedBox(
            height: 270,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff00EDA6),
              minimumSize: const Size(400, 52),
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
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE4F9F3),
                minimumSize: const Size(400, 52),
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
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
