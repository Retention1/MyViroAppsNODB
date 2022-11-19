import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/image_strings.dart';
import '../login/login_screen.dart';
import 'WidgetDashboardCategories/widget_dunny.dart';
import 'WidgetDashboardCategories/widget_idea.dart';
import 'WidgetDashboardCategories/widget_mintasaran.dart';
import 'WidgetDashboardCategories/widget_monitoring.dart';
import 'WidgetDashboardCategories/widget_revisi.dart';
import 'WidgetDashboardCategories/widget_statistik.dart';

class WidgetDashBoard extends StatelessWidget {
  const WidgetDashBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xfffddcdf),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * .13,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    )
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.black),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(tCatGlassesImage))),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 20,
                      child: Text(
                        'Hello,',
                        style: GoogleFonts.nunito(
                            fontSize: 25, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 20,
                      child: Text(
                        'Muhammad Sumbul',
                        style: GoogleFonts.nunito(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: Text('Kucing Petarung'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Categories'), Text('View All')],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  primary: false,
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "assets/images/analysis.png",
                            width: 70,
                          ),
                          GestureDetector(
                              onTap: () {
                                _WidgetStatistikMenu(context);
                              },
                              child: Text(
                                'Statistik',
                                textAlign: TextAlign.center,
                              ))
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                _WidgetIdeaMenu(context);
                              },
                              child: Image.asset(
                                "assets/images/book.png",
                                width: 70,
                              )),
                          Text(
                            'Idea',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              _WidgetRevisiMenu(context);
                            },
                            child: Image.asset(
                              "assets/images/documents.png",
                              width: 70,
                            ),
                          ),
                          Text(
                            'Revisi',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              _WidgetMonitoring(context);
                            },
                            child: Image.asset(
                              "assets/images/monitoring.png",
                              height: 70,
                            ),
                          ),
                          Text(
                            'Monitoring',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              _WidgetMintaSaranMenu(context);
                            },
                            child: Image.asset(
                              "assets/images/invitation.png",
                              width: 70,
                            ),
                          ),
                          Text(
                            'Minta Saran',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              _WidgetStatistikDummy(context);
                            },
                            child: Image.asset(
                              tWelcomeImage,
                              width: 70,
                            ),
                          ),
                          Text(
                            'Statistik',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Ide kamu: '), Text('View All')],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: DrawerMotion(),
                          children: [
                            SlidableAction(
                              onPressed: ((context) {
                                //Aksi saat button di tekan
                              }),
                              icon: Icons.mark_email_read,
                              backgroundColor: Colors.green,
                              label: 'Read More',
                            ),
                          ],
                        ),
                        child: Container(
                          child: ListTile(
                            title: Text('Ide, Smart Warteg'),
                            subtitle: Text('Status: Di tolak'),
                            leading: Icon(
                              Icons.mark_email_unread,
                              size: 40,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.2),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: const Offset(0, 0),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _WidgetIdeaMenu(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return WidgetIdea();
        });
  }

  void _WidgetStatistikMenu(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc1) {
          return WidgetStatistik();
        });
  }

  void _WidgetMintaSaranMenu(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc2){
        return WidgetMintaSaran();
      }
    );
  }
  
  
  void _WidgetMonitoring(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc3){
        return WidgetMonitoring();
      }
    );
  }

  void  _WidgetStatistikDummy(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc5){
        return  DummyStatistic();
      }
    );
  }


  void _WidgetRevisiMenu(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc4){
        return WidgetRevisi();
      }
    );
  }
}










