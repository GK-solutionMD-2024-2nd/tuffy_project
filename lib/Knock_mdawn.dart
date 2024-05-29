import 'package:flutter/material.dart';
import 'package:knock_app/setting.dart';

class KnockMdawn extends StatelessWidget {
  final String friendName;

  KnockMdawn({required this.friendName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFD7E5FF), // AppBar 배경색 변경
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(
              Icons.density_medium,
              color: Color(0xFFFFAC48B), // 아이콘 색상
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
            color: Color(0xFFFFD7E5FF), // FFDE97 색상의 배경
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 200, // 원의 너비
                        height: 200, // 원의 높이
                        decoration: BoxDecoration(
                          color: Color(0xFFFFAC48B), // FF901C 색상의 동그라미
                          shape: BoxShape.circle, // 동그라미 모양
                        ),
                      ),
                      Text(
                        'KNOCK',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black, // 텍스트 색상
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // 원과 텍스트 사이의 간격
                  Text(
                    friendName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // 텍스트 색상
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
