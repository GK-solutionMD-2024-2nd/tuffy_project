import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
          backgroundColor: Color(0xFFFFF3D9), // AppBar 배경색 변경
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFFFF901C)),
            onPressed: () {
              Navigator.pop(context); // 뒤로가기 버튼 눌렀을 때의 동작 추가
            },
          ),
         
        ),   
      body: Container(
        color: Color(0xFFFFF3D9), // 배경색 설정
        child: Center(
          child: Text(
            '유민서',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingView(), // SettingView를 앱의 홈으로 설정
  ));
}
