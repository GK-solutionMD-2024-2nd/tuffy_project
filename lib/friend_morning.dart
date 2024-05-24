import 'package:flutter/material.dart';
class friend_morning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFFDE97), // FFDE97 색상의 배경
              width: double.infinity,  // 전체 화면 너비
              height: double.infinity, // 전체 화면 높이
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                children: List.generate(6, (index) => 
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 80, // 원의 너비 (인스타 프로필 크기)
                            height: 80, // 원의 높이 (인스타 프로필 크기)
                            decoration: BoxDecoration(
                              color: Color(0xFFFF901C), // FF901C 색상의 동그라미
                              shape: BoxShape.circle, // 동그라미 모양
                            ),
                          ),
                          SizedBox(width: 10), // 동그라미와 텍스트 사이의 간격
                          Text(
                            '남민주',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black, // 텍스트 색상
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // 각 ROW 사이의 간격
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

