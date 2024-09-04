import 'package:flutter/material.dart';
import 'screens/language_selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korean Tourist App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectionScreen(),
      localizationsDelegates: [
        // Localizations delegates here
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English
        const Locale('ko', ''), // Korean
        const Locale('zh', ''), // Chinese
        const Locale('ja', ''), // Japanese
      ],
    );
  }
}
