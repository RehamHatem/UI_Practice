import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = "second";

  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Image(
              image: AssetImage("assets/images/girl.png"),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello, Jade",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                Text("Ready to workout?",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ],
            ),
            actions: [
              badges.Badge(
                showBadge: true,
                ignorePointer: false,
                onTap: () {},
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.circle,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(Icons.notifications_none_outlined,
                    color: Colors.black, size: 35),
                // ),
              )
            ],
          ),
          body: Column(
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Color(0xffF8F9FC)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border_outlined,
                                color: Color(0xff717BBC)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Heart Rate",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("81 BPM",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.list, color: Color(0xff717BBC)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "To-do",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("32,5 %",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.verified_outlined,
                                color: Color(0xff717BBC)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1000 cal",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("81 BPM",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Workout Programs",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
             

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Color(0xffEAECF5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 36,
                                  width: 68,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFCFCFD),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, ThirdScreen.routeName);
                                    },
                                    child: Text("7 days",
                                        textAlign: TextAlign.center),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Morning Yoga",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Improve mental focus.",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_outlined),
                                    Text(
                                      "30 mins",
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Image(
                                    image: AssetImage("assets/images/yoga.png"))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 203,
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Color(0xffEAECF5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 36,
                                    width: 68,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFCFCFD),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text("3 days",
                                        textAlign: TextAlign.center),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Plank Exercise",
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Improve posture and stability.",
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time_outlined),
                                      Text(
                                        "30 mins",
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/pngwing 1.png"))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Color(0xffEAECF5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 36,
                                  width: 68,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFCFCFD),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text("7 days",
                                      textAlign: TextAlign.center),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Morning Yoga",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Improve mental focus.",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_outlined),
                                    Text(
                                      "30 mins",
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Image(
                                    image: AssetImage("assets/images/yoga.png"))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff363F72),
            unselectedItemColor: Colors.grey,
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            iconSize: 30,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.navigation_outlined),
                label: "grid",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: "calender",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "person",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
