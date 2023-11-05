import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;
  bool isLiked1 = false;
  bool isLiked2 = false;
  List list = [
    'assets/images/WhatsApp Image 2023-09-15 at 12.59.51 PM.jpeg',
    'assets/images/WhatsApp Image 2023-09-15 at 12.55.05 PM.jpeg',
    'assets/images/WhatsApp Image 2023-09-12 at 10.14.43 AM.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2023-09-12 at 10.19.22 AM.jpeg'),
                  ),
                  title: Text(
                    '_kaju_kads_',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Image.asset(
                    'assets/images/WhatsApp Image 2023-09-12 at 10.19.22 AM.jpeg'),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked2 = !isLiked2;
                              });
                            },
                            icon: ImageIcon(
                              AssetImage(isLiked2
                                  ? 'assets/images/heart-red.png'
                                  : 'assets/images/noun-heart-6101123.png'),
                              size: 29,
                            ),
                            color: isLiked2 ? Colors.red : Colors.black,
                          ),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-comment-icon.png'),
                          ),
                          const SizedBox(width: 10),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-share-icon.png'),
                          ),
                        ],
                      ),
                      const ImageIcon(
                        AssetImage('assets/images/Daco_1095128.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      for (int i = 0; i < list.length; i++)
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            widthFactor: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(list[i]),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 15),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Liked by',
                              style: TextStyle(
                                color: Color.fromARGB(255, 28, 28, 28),
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: 'kaju_kads_ and others',
                              style: TextStyle(
                                color: Color.fromARGB(255, 50, 50, 50),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              '_kaju_kads_',
                              style: TextStyle(
                                color: Color.fromARGB(255, 47, 47, 47),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                'Bliss',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 37, 37, 37),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'View all comments',
                          style: TextStyle(
                            color: Color.fromARGB(255, 157, 157, 157),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '2 days ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 125, 125, 125),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2023-09-12 at 10.23.50 AM.jpeg'),
                  ),
                  title: Text(
                    'j_aaa_su',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Image.asset(
                    'assets/images/WhatsApp Image 2023-09-12 at 11.29.59 AM.jpeg'),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked2 = !isLiked2;
                              });
                            },
                            icon: ImageIcon(
                              AssetImage(isLiked2
                                  ? 'assets/images/heart-red.png'
                                  : 'assets/images/noun-heart-6101123.png'),
                              size: 29,
                            ),
                            color: isLiked2 ? Colors.red : Colors.black,
                          ),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-comment-icon.png'),
                          ),
                          const SizedBox(width: 10),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-share-icon.png'),
                          ),
                        ],
                      ),
                      const ImageIcon(
                        AssetImage('assets/images/Daco_1095128.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      for (int i = 0; i < list.length; i++)
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            widthFactor: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(list[i]),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 15),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Liked by',
                              style: TextStyle(
                                color: Color.fromARGB(255, 28, 28, 28),
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: 'n4jib and others',
                              style: TextStyle(
                                color: Color.fromARGB(255, 50, 50, 50),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'j_aaa_su',
                              style: TextStyle(
                                color: Color.fromARGB(255, 47, 47, 47),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                'On a Wedding day',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 37, 37, 37),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'View all comments',
                          style: TextStyle(
                            color: Color.fromARGB(255, 157, 157, 157),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '5 days ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 125, 125, 125),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/WhatsApp Image 2023-09-15 at 12.55.05 PM.jpeg'),
                  ),
                  title: Text(
                    'aleenaeshwar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Image.asset(
                    'assets/images/WhatsApp Image 2023-09-15 at 12.59.51 PM.jpeg'),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked2 = !isLiked2;
                              });
                            },
                            icon: ImageIcon(
                              AssetImage(isLiked2
                                  ? 'assets/images/heart-red.png'
                                  : 'assets/images/noun-heart-6101123.png'),
                              size: 29,
                            ),
                            color: isLiked2 ? Colors.red : Colors.black,
                          ),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-comment-icon.png'),
                          ),
                          const SizedBox(width: 10),
                          const ImageIcon(
                            AssetImage(
                                'assets/images/instagram-share-icon.png'),
                          ),
                        ],
                      ),
                      const ImageIcon(
                        AssetImage('assets/images/Daco_1095128.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      for (int i = 0; i < list.length; i++)
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            widthFactor: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(list[i]),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 15),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Liked by',
                              style: TextStyle(
                                color: Color.fromARGB(255, 28, 28, 28),
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: 'kaju_kads_ and others',
                              style: TextStyle(
                                color: Color.fromARGB(255, 50, 50, 50),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'aleenaeshwar',
                              style: TextStyle(
                                color: Color.fromARGB(255, 47, 47, 47),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                'Heaven',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 37, 37, 37),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'View all comments',
                          style: TextStyle(
                            color: Color.fromARGB(255, 157, 157, 157),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '10 days ago',
                          style: TextStyle(
                            color: Color.fromARGB(255, 125, 125, 125),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
