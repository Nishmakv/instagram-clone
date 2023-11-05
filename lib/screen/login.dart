import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenLogin> {
  final _list = [
    'English(India)',
    'English(United States)',
    'English(British)',
  ];
  bool _passwordToggle = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: DropdownButtonFormField(
                    onChanged: (value) {
                      print(value);
                    },
                    items: _list.map((e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList()),
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/letter-instagram-font-clip-art-portable-network-graphics-instagram-5f7002e691bed6093e02580e85ee46bd.png',
                        height: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Phone number,email or username',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 215, 215, 215),
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 250, 250, 250),
                        ),
                        validator: (value) {
                          if (value != 'nishma') {
                            return '';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _passwordToggle,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 215, 215, 215),
                            fontSize: 14,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordToggle = !_passwordToggle;
                              });
                            },
                            icon: Icon(
                              _passwordToggle
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 250, 250, 250),
                        ),
                        validator: (value) {
                          if (value != 'najib') {
                            print('Username and Password doesnot match');
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          checkLogin(context);
                        } else {
                          'Username and Password not correct';
                        }
                      },
                      child: const Text('Log In'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(350, 43),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Forgot your login details?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 216, 216, 216),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Get help logging in',
                            style: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Flexible(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Text('OR'),
                        Flexible(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        checkLogin(context);
                      },
                      child: const Text('Log in with Facebook'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an acount?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 178, 178, 178),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 190, 190, 190),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setBool(SAVE_KEY_NAME, true);
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (ctx1) => const ScreenHome(),
      ),
    );
  }
}
