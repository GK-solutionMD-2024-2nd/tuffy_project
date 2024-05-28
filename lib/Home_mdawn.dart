import 'package:flutter/material.dart';

class Home_mdawn extends StatelessWidget {
  const Home_mdawn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              color: Color(0xFFFD7E5FF), // FFDE97 색상의 배경
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                  children: [
                    Container(
                      width: 200, // 원의 너비
                      height: 200, // 원의 높이
                      decoration: BoxDecoration(
                        color: Color(0xFFFFAC48B), // FF901C 색상의 동그라미
                        shape: BoxShape.circle, // 동그라미 모양
                      ),
                    ),
                    SizedBox(height: 20), // 원과 텍스트 사이의 간격
                    Text(
                      '누구에게 노크할건가요?',
                      style: TextStyle(
                        fontSize: 18,
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
        );
  }
}