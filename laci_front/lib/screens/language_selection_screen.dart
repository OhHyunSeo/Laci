import 'package:flutter/material.dart';
import 'main_theme_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Language')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('한국어'),
            onTap: () {
              // 언어 설정 후 다음 화면으로 이동
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('English'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('中文'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('日本語'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
