import 'package:flutter/material.dart';

class TouristSpotDetailScreen extends StatelessWidget {
  final String spotName;

  TouristSpotDetailScreen({required this.spotName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(spotName)),
      body: Column(
        children: [
          Image.network('https://example.com/image.jpg'), // 관광지 이미지
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('관광지에 대한 상세 정보...'), // 관광지 상세 설명
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // 이전 화면으로 돌아가기
            },
            child: Text('돌아가기'),
          ),
        ],
      ),
    );
  }
}
