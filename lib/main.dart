import 'package:flutter/material.dart';
import 'package:knock_app/Home_%20night.dart';
import 'package:knock_app/Home_dawn.dart';
import 'package:knock_app/Home_mdawn.dart';
import 'package:knock_app/Knock_dawn.dart';
import 'package:knock_app/Knock_mdawn.dart';
import 'package:knock_app/Knock_mornig.dart';
import 'package:knock_app/Knock_noght.dart';
import 'package:knock_app/Signin.dart';
import 'package:knock_app/Signup.dart';
import 'package:knock_app/friend_%20dawn.dart';
import 'package:knock_app/friend_mdawn.dart';
import 'package:knock_app/friend_morning.dart';
import 'package:knock_app/friend_night.dart';
import 'package:knock_app/loading.dart';
import 'package:flutter/material.dart';
import 'package:knock_app/setting.dart';
import 'friend_morning.dart'; 


void main() {
  runApp(MyApp());
}

// MyApp 클래스 정의
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knock App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyWidget(), // MyWidget을 시작 화면으로 설정
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
          backgroundColor: Color(0xFFFFDE97), // AppBar 배경색 변경
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
              color: Color(0xFFFFDE97), // FFDE97 색상의 배경
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FriendMorning()), // friend_morning 파일의 화면으로 이동
                        );
                      },
                      child: Container(
                        width: 200, // 원의 너비
                        height: 200, // 원의 높이
                        decoration: BoxDecoration(
                          color: Color(0xFFFF901C), // FF901C 색상의 동그라미
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