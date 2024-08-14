import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isGuest;

  const HomeScreen({Key? key, this.isGuest = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('드르렁 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isGuest ? '게스트로 로그인했습니다.' : '로그인 성공!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: 음악 듣기 기능 구현
              },
              child: const Text('음악 듣기'),
            ),
            if (!isGuest) ...[
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // TODO: 플레이리스트 기능 구현
                },
                child: const Text('플레이리스트'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}