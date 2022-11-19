import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_viro_apps/screens/Dashboard_Screen/widget_message.dart';
import 'Widget_Dashboard.dart';
import 'Widget_Profile.dart';
import 'Widget_Settings.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  int _currentIndex = 0;
  late PageController _pageController;


  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            WidgetDashBoard(),
            WidgetMessage(),
            WidgetProfile(),
            WidgetSettings(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index){
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.apps), title: (Text("Dashboard"))),
          BottomNavyBarItem(icon: Icon(Icons.chat_bubble), title: (Text("Message"))),
          BottomNavyBarItem(icon: Icon(Icons.supervised_user_circle_sharp), title: (Text("Profile"))),
          BottomNavyBarItem(icon: Icon(Icons.settings), title: (Text("Settings"))),
        ],

      ),
    );
  }
}








