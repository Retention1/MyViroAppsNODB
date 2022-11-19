import 'package:flutter/material.dart';


import '../Dashboard_Screen/MainDashboard.dart';
import '../constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfffddcdf),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(18),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: RichText(
                    text: const TextSpan(
                        text: 'Your',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffff4590),
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' Dream App',
                          style: TextStyle(
                            color: Colors.black87,
                          ))
                    ])),
              ),
              SizedBox(
                width: size.width,
                height: size.height * .3,
                child: Image.asset(tLoginArt),
              ),
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                    color: Color(0xFFFEF4F5),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: 10,
                      left: 20,
                      child: Text(
                        'Login Here',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail_outline,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const TextField(
                                    cursorColor: Colors.grey,
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'example@gmail.com',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 120,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.password,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const TextField(
                                    obscureText: true,
                                    cursorColor: Colors.grey,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      letterSpacing: 1.4,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '...........',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 180,
                        left: 20,
                        child: SizedBox(
                          width: size.width * .8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                'Forgot Details',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                      bottom: -30,
                      right: 30,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => const DashBoardScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff382743),
                                  Color(0xffff4590),
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(tRightArrow),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
