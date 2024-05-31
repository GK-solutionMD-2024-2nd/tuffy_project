
import 'package:flutter/material.dart';
import 'package:knock_app/Home_%20night.dart';
import 'package:knock_app/Home_dawn.dart';
import 'package:knock_app/Home_mdawn.dart';
import 'package:knock_app/Knock_dawn.dart';
import 'package:knock_app/Knock_mdawn.dart';
import 'package:knock_app/Knock_mornig.dart';
import 'package:knock_app/Knock_noght.dart';
import 'package:knock_app/friend_%20dawn.dart';
import 'package:knock_app/friend_mdawn.dart';
import 'package:knock_app/friend_morning.dart';
import 'package:knock_app/friend_night.dart';
import 'package:knock_app/setting.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  Widget Home() {
    final hour = DateTime.now().hour;
    if (hour >= 6 && hour < 17) {
      // 오전 6시부터 오후 5시까지
      return MyWidget();
    } else if (hour >= 17 && hour < 21) {
      // 오후 5시부터 오후 9시까지
      return Home_dawn();
    } else if (hour >= 21 && hour < 24) {
      // 오후 9시부터 자정까지
      return Home_night();
    } else {
      // 자정부터 오전 6시까지
      return Home_mdawn();
    }
  }

  Widget Knock(String name) {
    final hour = DateTime.now().hour;
    if (hour >= 6 && hour < 17) {
      // 오전 6시부터 오후 5시까지
      return KnockMorning(friendName: name);
    } else if (hour >= 17 && hour < 21) {
      // 오후 5시부터 오후 9시까지
      return Knockdawn(friendName: name);
    } else if (hour >= 21 && hour < 24) {
      // 오후 9시부터 자정까지
      return Knock_noght(friendName: name);
    } else {
      // 자정부터 오전 6시까지
      return KnockMdawn(friendName: name);
    }
  }

  Widget Friend() {
    final hour = DateTime.now().hour;
    if (hour >= 6 && hour < 17) {
      // 오전 6시부터 오후 5시까지
      return FriendMorning();
    } else if (hour >= 17 && hour < 21) {
      // 오후 5시부터 오후 9시까지
      return FriendDawn();
    } else if (hour >= 21 && hour < 24) {
      // 오후 9시부터 자정까지
      return FriendNight();
    } else {
      // 자정부터 오전 6시까지
      return FriendMdawn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home()), // 시간에 따른 Home 페이지로 이동
                          );
                        },
                        child: Container(
                          width: 100, // 원의 너비
                          height: 100, // 원의 높이
                          decoration: BoxDecoration(
                            color: Color(0xFFFF901C), // FF901C 색상의 동그라미
                            shape: BoxShape.circle, // 동그라미 모양
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Knock("")), // 시간에 따른 Knock 페이지로 이동
                          );
                        },
                        child: Container(
                          width: 100, // 원의 너비
                          height: 100, // 원의 높이
                          decoration: BoxDecoration(
                            color: Color(0xFFFF901C), // FF901C 색상의 동그라미
                            shape: BoxShape.circle, // 동그라미 모양
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Friend()), // 시간에 따른 Friend 페이지로 이동
                          );
                        },
                        child: Container(
                          width: 100, // 원의 너비
                          height: 100, // 원의 높이
                          decoration: BoxDecoration(
                            color: Color(0xFFFF901C), // FF901C 색상의 동그라미
                            shape: BoxShape.circle, // 동그라미 모양
                          ),
                        ),
                      ),
                    ],
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
