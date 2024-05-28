import 'package:flutter/material.dart';
import 'package:knock_app/Home_%20night.dart';
import 'package:knock_app/Home_dawn.dart';
import 'package:knock_app/Home_mdawn.dart';
import 'package:knock_app/Knock_afternoon.dart';
import 'package:knock_app/Knock_dawn.dart';
import 'package:knock_app/Knock_mdawn.dart';
import 'package:knock_app/Knock_mornig.dart';
import 'package:knock_app/Knock_noght.dart';
import 'package:knock_app/Signup.dart';
import 'package:knock_app/friend_%20dawn.dart';
import 'package:knock_app/friend_afternoon.dart';
import 'package:knock_app/friend_mdawn.dart';
import 'package:knock_app/friend_morning.dart';
import 'package:knock_app/Home_afternoon.dart';
import 'package:knock_app/friend_night.dart';
import 'package:knock_app/loading.dart';
import 'package:knock_app/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Signup(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              color: Color(0xFFFFDE97), // FFDE97 색상의 배경
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 내용물 크기에 맞춰서 줄이기
                  children: [
                    Container(
                      width: 200, // 원의 너비
                      height: 200, // 원의 높이
                      decoration: BoxDecoration(
                        color: Color(0xFFFF901C), // FF901C 색상의 동그라미
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