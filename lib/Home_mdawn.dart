import 'dart:async';
import 'package:flutter/material.dart';
import 'package:knock_app/friend_mdawn.dart';
import 'package:knock_app/setting.dart';
import 'package:knock_app/Home_dawn.dart'; // 다른 화면으로 전환하기 위한 임포트

class HomeMdawn extends StatefulWidget {
  const HomeMdawn({super.key});

  @override
  _HomeMdawnState createState() => _HomeMdawnState();
}

class _HomeMdawnState extends State<HomeMdawn> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(minutes: 1), _navigateToNextScreen);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home_dawn()), // 다음 화면으로 전환
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD7E5FF), // AppBar 배경색 변경
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(
              Icons.density_medium,
              color: Color(0xFFFF901C), // 아이콘 색상
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingView()), // SettingView로 이동
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFFD7E5FF), // 배경 색상 변경
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FriendMdawn()), // FriendMdawn 화면으로 이동
                      );
                    },
                    child: Container(
                      width: 200, // 원의 너비
                      height: 200, // 원의 높이
                      decoration: BoxDecoration(
                        color: Color(0xFFFAC48B), // 원의 색상
                        shape: BoxShape.circle, // 원 모양
                      ),
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
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: HomeMdawn(),
  ));
}
