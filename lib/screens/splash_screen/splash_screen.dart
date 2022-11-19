import 'package:flutter/material.dart';


import '../on_board/OnBoardScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF4F5),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(microseconds: 1600),
            top: animate ? 700 : -30,
            left: animate ? 120: -30,
            child: Text.rich(
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
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/logo_apps.png'),
              height: 300.0,
              width: 300.0,
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 300));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));

  }
}


