import 'package:flutter/material.dart';
import 'main_theme_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  final Function(Locale) onLocaleChange;

  LanguageSelectionScreen({required this.onLocaleChange});

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
              onLocaleChange(Locale('ko')); // 한국어로 변경
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('English'),
            onTap: () {
              onLocaleChange(Locale('en')); // 영어로 변경
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('中文'),
            onTap: () {
              onLocaleChange(Locale('zh')); // 중국어로 변경
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainThemeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('日本語'),
            onTap: () {
              onLocaleChange(Locale('ja')); // 일본어로 변경
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
