import 'package:flutter/material.dart';


import '../constants/image_strings.dart';
import 'DashboardAddon/profile_settings.dart';

class WidgetProfile extends StatelessWidget {
  const WidgetProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
                Center(
                  child: SizedBox(
                    child: Text.rich(
                      TextSpan(text: 'My', children: [
                        TextSpan(
                            text: 'Profile',
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Menu',
                            style:
                            TextStyle(fontSize: 30.0, color: Colors.blue)),
                        TextSpan(),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: size.height * .65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ]),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: 5,
                          left: 3,
                          child: IconButton(
                              onPressed: () {
                               ////
                              },
                              icon: Icon(Icons.edit)
                          )
                      ),
                      Positioned(
                          top: 5,
                          right: 3,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) => const ProfileSettings()));
                              },
                              icon: Icon(Icons.settings)
                          )
                      ),
                      Positioned(
                        top: 90,
                        left: 110,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Colors.black
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(tCatGlassesImage)
                            )
                          ),
                        ),
                      ),
                      Positioned(
                          top: 250,
                          left: 20,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
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
                                        hintText: 'Muhammad Sumbul',
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
                          top: 310,
                          left: 20,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.mail,
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
                                        hintText: 'Mellow@sumbul.io',
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
                          top: 370,
                          left: 20,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.phone,
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
                                        hintText: '085162981827',
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
                          top: 430,
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
                                      cursorColor: Colors.grey,
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'm.sumbul.ganteng77',
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
                          )
                      ),
                      Positioned(
                        top: 499,
                        right: 10,
                        child: Container(
                          child: TextButton(
                            child: Text('UPDATE'),
                            onPressed: (){},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


