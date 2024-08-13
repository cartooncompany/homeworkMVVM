import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../MainPage/home_screen.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Container(
                width: 353.w,
                height: 200.h,
                decoration: BoxDecoration(
                  color: const Color(0xffE4F9F3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "문제 설명",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Text(
                "01/15",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 353.w,
                height: 69.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: const Color(0xff68F665)),
                  color: const Color(0xffE4F9F3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "맞은 문제",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 353.w,
                height: 281.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffE4F9F3),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "해설해설해설해설해설해설해설",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
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
                        print("다음 문제");
                      },
                      child: const Text(
                        "다음 문제",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
