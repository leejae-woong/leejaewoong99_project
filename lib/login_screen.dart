import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _isLoading = false;

  void _trySubmitForm() async {
    // 기존 코드 유지
  }

  void _googleLogin() async {
    // 기존 코드 유지
  }

  void _kakaoLogin() async {
    // 기존 코드 유지
  }

  void _guestLogin() {
    // 기존 코드 유지
  }

  @override
  Widget build(BuildContext context) {
    // 기존 build 메서드 내용 유지
  }

  Widget _buildSocialButton(String text, IconData icon, Color textColor, Color backgroundColor, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: FaIcon(icon, color: textColor),
        label: Text(text, style: TextStyle(color: textColor)),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,  // primary를 backgroundColor로 변경
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // 기존 TextFormField들 유지
          SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: _isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text('로그인'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,  // primary를 backgroundColor로 변경
                foregroundColor: Color(0xFF1E3C72),  // onPrimary를 foregroundColor로 변경
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: _trySubmitForm,
            ),
          ),
        ],
      ),
    );
  }
}