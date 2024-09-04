import 'package:flutter/material.dart';
import 'tourist_spot_detail_screen.dart';

class TouristSpotListScreen extends StatelessWidget {
  final String theme;
  final List<String> spots = ["경복궁", "창덕궁", "덕수궁"]; // 예시 관광지

  TouristSpotListScreen({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$theme 관광지')),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: spots.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TouristSpotDetailScreen(spotName: spots[index])),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image.network('https://example.com/image.jpg'), // 관광지 이미지
                  Text(spots[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
