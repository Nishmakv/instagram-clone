import 'package:flutter/material.dart';
import 'package:instagram/widget/story_card.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  List<DummyModel> profileData = [
    DummyModel(asset: 'assets/images/images.jpeg', name: 'nishma'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.19.22 AM.jpeg',
        name: 'kaju'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
    DummyModel(
        asset: 'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg',
        name: 'krishna'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return StoryCard(
                  asset: profileData[index].asset ?? "",
                  name: profileData[index].name ?? '');
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 5);
            },
            itemCount: profileData.length)
        //   scrollDirection: Axis.horizontal,
        //   children: const [
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //             'assets/images/images.jpeg',
        //           ),
        //           radius: 40,
        //         ),
        //         Text('nishma_azad_'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-15 at 12.55.05 PM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('aleenaeshwar'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-12 at 10.19.22 AM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('_kaju_kads_'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('j_aaa_su'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-12 at 10.29.23 AM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('shafna_nazer'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-12 at 10.14.43 AM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('n4jib'),
        //       ],
        //     ),
        //     SizedBox(width: 10),
        //     Column(
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage(
        //               'assets/images/WhatsApp Image 2023-09-12 at 10.33.26 AM.jpeg'),
        //           radius: 40,
        //         ),
        //         Text('__krishnapriya__kr'),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}

// ignore: empty_constructor_bodies
class DummyModel {
  final String? asset;
  final String? name;
  DummyModel({this.asset, this.name});
}
