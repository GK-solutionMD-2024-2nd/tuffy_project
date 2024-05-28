import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class friend_dawn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 친구 이름 목록
    final List<String> friendNames = [
      '남민주',
      '이윤성',
      '서경민',
      '김지아',
      '박신',
      '김이안',
      '이서윤',
      '이태연',
      '이지민',
      '김준희'
    ];

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFF718CBF), // FFDE97 색상의 배경
              width: double.infinity,  // 전체 화면 너비
              height: double.infinity, // 전체 화면 높이
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 130, left: 14),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                    children: List.generate(friendNames.length, (index) {
                      return Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80, // 원의 너비 (인스타 프로필 크기)
                                  height: 80, // 원의 높이 (인스타 프로필 크기)
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFC3D7FF), // FF901C 색상의 동그라미
                                    shape: BoxShape.circle, // 동그라미 모양
                                  ),
                                  child: Center(
                                    child: Text(
                                      'KNOCK',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black, // 텍스트 색상
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10), // 동그라미와 텍스트 사이의 간격
                                Text(
                                  friendNames[index], // 각 인덱스에 해당하는 이름
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white, // 텍스트 색상
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 35), // 각 ROW 사이의 간격
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ),
            Container(
              height: 115, // 선의 두께
              color: Color(0xFFFFC3D7FF), // FF901C 색상의 선
              width: double.infinity,  // 전체 화면 너비
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 30), // 텍스트와 왼쪽 가장자리 사이의 간격
                  child: Text(
                    '<         누구에게 노크할건가요?',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
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
