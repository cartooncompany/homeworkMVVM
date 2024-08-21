import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/view/LoginPage/signup_screen.dart';

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

  bool _backColor1 = true;
  bool _borderColor1 = true;
  bool _borderWidth = true;
  final FocusNode _focusNode = FocusNode();

  bool _backColor2 = true;
  bool _borderColor2 = true;
  final FocusNode _focusNode2 = FocusNode();

  double width1 = 2.0;
  double width2 = 0.0;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _focusNode.addListener(_changeFocus1);
    _focusNode2.addListener(_changeFocus2);
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _focusNode.removeListener(_changeFocus1);
    _focusNode2.removeListener(_changeFocus2);
    _focusNode.dispose();
    _focusNode2.dispose();
  }

  void _changeFocus1() {
    if (_focusNode.hasFocus) {
      setState(() {
        _backColor1 = false;
        _borderColor1 = false;
        _borderWidth = false;
      });
    } else {
      setState(() {
        _backColor1 = true;
        _borderColor1 = true;
        _borderWidth = true;
      });
    }
  }

  void _changeFocus2() {
    if (_focusNode2.hasFocus) {
      setState(() {
        _backColor2 = false;
        _borderColor2 = false;
      });
    } else {
      setState(() {
        _backColor2 = true;
        _borderColor2 = true;
      });
    }
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
                style:
                    TextStyle(color: const Color(0xff00EDA6), fontSize: 37.w),
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
              focusNode: _focusNode,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "이메일",
                filled: true,
                fillColor: _backColor1 ? const Color(0xffF4F4F4) : Colors.white,
                labelStyle: const TextStyle(color: Color(0xffB4B4B4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _borderColor1 ? const Color(0xffF4F4F4) : Colors.black,
                    width: _borderWidth ? width1 : width2,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 345.w,
            height: 76.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              obscureText: _obscureText,
              focusNode: _focusNode2,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(
                      () {
                        _obscureText = !_obscureText;
                      },
                    );
                  },
                ),
                border: InputBorder.none,
                labelText: "비밀번호",
                filled: true,
                fillColor: _backColor2 ? const Color(0xffF4F4F4) : Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _borderColor2 ? Colors.transparent : Colors.black,
                    width: 2,
                  ),
                ),
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
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
