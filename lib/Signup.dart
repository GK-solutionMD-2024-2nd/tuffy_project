import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFFF3D9), // 배경 색상
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'KNOCK',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black, // 텍스트 색상
                          ),
                        ),
                        SizedBox(height: 33), // 텍스트와 동그라미 사이의 간격
                        Container(
                          width: 180, // 원의 너비
                          height: 180, // 원의 높이
                          decoration: BoxDecoration(
                            color: Color(0xFFFF901C), // 주황색 동그라미
                            shape: BoxShape.circle, // 동그라미 모양
                          ),
                        ),


                        SizedBox(height: 60), // 동그라미와 네모 사이의 간격

                        
                      Container(
  width: 346, // 네모의 너비
  height: 70, // 네모의 높이
  decoration: BoxDecoration(
    border: Border.all(
      color: Color(0xFFAC8178), // 테두리 색상
      width: 3, // 테두리 두께
    ),
    borderRadius: BorderRadius.circular(19), // 둥근 경계 반지름
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬을 중앙에 배치
    crossAxisAlignment: CrossAxisAlignment.start, // 수평 정렬을 왼쪽에 배치
    children: [
      Padding(
        padding: EdgeInsets.only(left: 16), // 왼쪽 여백 추가
        child: Text(
          '이메일',
          style: TextStyle(
            fontSize: 19,
            color: Color(0xFFAC8178),
          ),
        ),
      ),
    ],
  ),
),

                      ],
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

void main() {
  runApp(Signup());
}
