import 'package:flutter/material.dart';
import 'package:instagram/widget/stories.dart';
import 'package:instagram/widget/post.dart';
import 'package:instagram/widget/bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/letter-instagram-font-clip-art-portable-network-graphics-instagram-5f7002e691bed6093e02580e85ee46bd.png',
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ImageIcon(
                        AssetImage('assets/images/noun-heart-6101123.png'),
                      ),
                      ImageIcon(
                        AssetImage('assets/images/Messenger.png'),
                      ),
                    ],
                  ),
                ],
              ),
              const StoryWidget(),
              PostWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigtionWidget(),
    );
  }
}
