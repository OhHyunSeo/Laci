import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/language_selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale; // 현재 선택된 Locale을 저장할 변수

  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale; // Locale이 변경될 때 setState를 통해 UI를 다시 빌드
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korean Tourist App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: _locale, // 선택된 Locale을 반영
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, // iOS 스타일 지원
      ],
      supportedLocales: [
        const Locale('en', ''), // 영어
        const Locale('ko', ''), // 한국어
        const Locale('zh', ''), // 중국어
        const Locale('ja', ''), // 일본어
      ],
      home: LanguageSelectionScreen(
        onLocaleChange: _setLocale, // 언어 선택 시 Locale을 변경하는 콜백 전달
      ),
    );
  }
}
