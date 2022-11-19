import 'package:flutter/material.dart';

import '../login/login_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xfffddcdf),
                  Color(0xffffdcbd),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 470,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    // Image.asset(
                    //   tLogoSplash,
                    //   width: 230,
                    // ),
                    const Text.rich(
                      TextSpan(text: 'My', children: [
                        TextSpan(
                            text: 'Viro',
                            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'App',
                            style: TextStyle(fontSize: 30.0, color: Colors.blue)),
                        TextSpan(),
                      ]),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}