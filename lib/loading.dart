import 'package:flutter/material.dart';

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFFFF3D9), // FFDE97 색상의 배경
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 180, // 원의 너비
                          height: 180, // 원의 높이
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF901C), // FF901C 색상의 동그라미
                            shape: BoxShape.circle, // 동그라미 모양
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // 원과 텍스트 사이의 간격
                    Text(
                      '로딩중...',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black, // 텍스트 색상
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Icon(
                Icons.density_medium,
                size: 24,
                color: Color(0xFFFF901C), // 아이콘 색상
              ),
            ),
          ],
        ),
      ),
    );
  }
}