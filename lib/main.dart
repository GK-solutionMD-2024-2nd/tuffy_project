import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xFFFFDE97), // FFDE97 색상의 배경
          child: Center(
            child: Container(
              width: 200, // 원의 너비
              height: 200, // 원의 높이
              decoration: BoxDecoration(
                color: Color(0xFFFF901C), // FF901C 색상의 동그라미
                shape: BoxShape.circle, // 동그라미 모양
              ),
            ),
          ),
        ),
      ),
    );
  }
}
