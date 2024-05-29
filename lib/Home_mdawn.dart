import 'package:flutter/material.dart';
import 'package:knock_app/friend_mdawn.dart';

class Home_mdawn extends StatelessWidget {
  const Home_mdawn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFD7E5FF), // AppBar 배경색 변경
          title: Text(''),
          actions: [
            IconButton(
              icon: Icon(
                Icons.density_medium,
                color: Color(0xFFFF901C), // 아이콘 색상
              ),
              onPressed: () {
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FriendMdawn()), // friend_morning 파일의 화면으로 이동
                        );
                      },
                      child: Container(
                        width: 200, // 원의 너비
                        height: 200, // 원의 높이
                        decoration: BoxDecoration(
                          color: Color(0xFFFAC48B), // FF901C 색상의 동그라미
                          shape: BoxShape.circle, // 동그라미 모양
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
      ),
    );
  }
}