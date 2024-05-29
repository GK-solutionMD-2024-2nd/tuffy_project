import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:knock_app/Knock_noght.dart';
import 'package:knock_app/setting.dart';
import 'Knock_mornig.dart'; // Knock_mornig 파일 임포트

class FriendNight extends StatelessWidget {
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
        appBar: AppBar(
          backgroundColor: Color(0xFFFF485776), // AppBar 배경색 변경
          title: Text('누구에게 노크할건가요?', style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context); // 뒤로가기 버튼 눌렀을 때의 동작 추가
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
               Icons.density_medium,
                color: Colors.white, // 아이콘 색상
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingView()), // SettingView로 이동
                ); // 이콘을 눌렀을 때의 동작을 여기에 추가
                // 아이콘을 눌렀을 때의 동작을 여기에 추가
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFF485776), // FFDE97 색상의 배경
              width: double.infinity,  // 전체 화면 너비
              height: double.infinity, // 전체 화면 높이
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 14),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                    children: List.generate(friendNames.length, (index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Knock_noght(friendName: friendNames[index]), // 클릭한 이름을 전달
                                ),
                              );
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 80, // 원의 너비 (인스타 프로필 크기)
                                    height: 80, // 원의 높이 (인스타 프로필 크기)
                                    decoration: BoxDecoration(
                                      color: Colors.white, // FF901C 색상의 동그라미
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
                          ),
                          SizedBox(height: 35), // 각 ROW 사이의 간격
                        ],
                      );
                    }),
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
