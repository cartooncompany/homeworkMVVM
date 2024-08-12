import 'package:flutter/material.dart';
import 'LoginPage/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
        fontFamily: "Pretendard",
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
