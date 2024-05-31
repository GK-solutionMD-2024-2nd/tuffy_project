import 'package:flutter/material.dart';
import 'package:knock_app/Home_%20night.dart';
import 'package:knock_app/Home_dawn.dart';
import 'package:knock_app/Home_mdawn.dart';
import 'package:knock_app/Knock_dawn.dart';
import 'package:knock_app/Knock_mdawn.dart';
import 'package:knock_app/Knock_mornig.dart';
import 'package:knock_app/Knock_noght.dart';
import 'package:knock_app/Signup.dart';
import 'package:knock_app/friend_%20dawn.dart';
import 'package:knock_app/friend_mdawn.dart';
import 'package:knock_app/friend_morning.dart';
import 'package:knock_app/friend_night.dart'; 
import 'package:knock_app/home.dart';
import 'package:knock_app/loading.dart';
import 'package:flutter/material.dart';
import 'package:knock_app/setting.dart';
import 'friend_morning.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
