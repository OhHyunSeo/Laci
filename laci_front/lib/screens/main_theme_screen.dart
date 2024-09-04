import 'package:flutter/material.dart';
import 'tourist_spot_list_screen.dart';

class MainThemeScreen extends StatelessWidget {
  final List<String> themes = ["조선 후기", "농민 봉기", "독립운동"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose a Theme')),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: themes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TouristSpotListScreen(theme: themes[index])),
              );
            },
            child: Card(
              child: Center(child: Text(themes[index])),
            ),
          );
        },
      ),
    );
  }
}
