import 'package:flutter/material.dart';


import 'package:instagram/screen/login.dart';


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/images/instagram.jpg', height: 100),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                const Text(
                  'from',
                  style: TextStyle(
                    color: Color.fromARGB(255, 146, 162, 177),
                  ),
                ),
                Image.asset('assets/images/Instagram-Meta-Logo-PNG-1.png',
                    height: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> gotoLogin(BuildContext ctx) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx1) => const ScreenLogin(),
      ),
    );
  }

  // Future<void> checkUserLoggedIn(BuildContext ctx) async {
  //   final sharedprefs = await SharedPreferences.getInstance();
  //   final userLoggedIn = sharedprefs.getBool(SAVE_KEY_NAME);
  //   if (userLoggedIn == null || userLoggedIn == false) {
  //     gotoLogin(ctx);
  //   } else {
  //     Navigator.of(ctx).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (ctx1) => ScreenHome(),
  //       ),
  //     );
  //   }
  // }
}
