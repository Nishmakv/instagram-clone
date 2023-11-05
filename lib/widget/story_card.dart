import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String asset;
  final String name;
  const StoryCard({super.key, required this.asset, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(asset),
          radius: 40,
        ),
        Text(name),
      ],
    );
  }
}
