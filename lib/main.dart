import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Flutter 엔진 초기화
  await Firebase.initializeApp();  // Firebase 초기화
  KakaoSdk.init(nativeAppKey: 'b44685da8fe894b46f58664f52cb9e1c');  // 카카오 SDK 초기화
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deureureong',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0A1D3B),
      ),
      home: const LoginScreen(),
    );
  }
}