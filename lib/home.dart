import 'package:exam/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "page1";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int current=0;

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
            leading: ImageIcon(AssetImage("assets/images/logo.png"),
                color: Colors.green),
            title: Text("Moody",
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
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
          body: SingleChildScrollView(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Hello,",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 25)),
                    Text(" Sara Rose",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 25)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(" How are you feeling today ?",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child:
                            Image(image: AssetImage("assets/images/love.png"))),
                    Expanded(
                        child:
                            Image(image: AssetImage("assets/images/react.png"))),
                    Expanded(
                        child:
                            Image(image: AssetImage("assets/images/happy.png"))),
                    Expanded(
                        child: Image(image: AssetImage("assets/images/sad.png"))),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Feature",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: GoogleFonts.inter(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.green, size: 15),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 170.0,enlargeCenterPage: true,
                  onPageChanged:  (index, reason) {
                    current=index;
                    setState(() {

                    });
                  },),
                  items: [1,2,3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),

                            child: Container(

                              decoration: BoxDecoration(color: Color(0xffECFDF3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Positive vibes",
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600, fontSize: 16)),
                                        SizedBox(height: 10),
                                        Text("Boost your mood with positive vibes",
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w400, fontSize: 16)),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,

                                          children: [
                                            Container(

                                              decoration: BoxDecoration(

                                                  color: Color(0xff32D583),
                                                  shape: BoxShape.circle

                                              ),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.play_arrow),
                                                color: Colors.white,
                                                iconSize: 25,

                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text("10 mins",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,
                                                fontWeight: FontWeight.w500),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "assets/images/Walking the Dog.png"))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: current, // PageController
                    count: 3,

                    effect: WormEffect(dotColor: Color(0xffD9D9D9),activeDotColor: Colors.grey,dotHeight: 10,dotWidth: 10), // your preferred effect
                    onDotClicked: (index) {},
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SecondScreen.routeName);
                      },
                      child: Text(
                        "See more",
                        style: GoogleFonts.inter(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.green, size: 15),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffF9F5FF),
                            borderRadius: BorderRadius.circular(15)


                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage("assets/images/Vector.png"),color: Color(0xffB692F6),),
                            SizedBox(width: 5,),
                            Text("Relaxation",style: GoogleFonts.inter(color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,

                        decoration: BoxDecoration(
                          color: Color(0xffFDF2FA),
                          borderRadius: BorderRadius.circular(15)

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage("assets/images/Vector2.png"),color: Color(0xffFAA7E0),),
                            SizedBox(width: 5,),
                            Text("Meditation",style: GoogleFonts.inter(color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFAF5),
                            borderRadius: BorderRadius.circular(15)


                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage("assets/images/Vector3.png"),color: Color(0xffFEB273),),
                            SizedBox(width: 5,),
                            Text("Beathing",style: GoogleFonts.inter(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,

                        decoration: BoxDecoration(
                            color: Color(0xffF0F9FF),
                            borderRadius: BorderRadius.circular(15)

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage("assets/images/Frame.png"),color: Color(0xff7CD4FD),),
                            SizedBox(width: 5,),
                            Text("Yoga",style: GoogleFonts.inter(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),





                // Container(
                //   padding: EdgeInsets.all(15),
                //   width: double.infinity,
                //   height: 150,
                //   decoration: BoxDecoration(color: Color(0xffECFDF3)),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text("Positive vibes",
                //                 style: GoogleFonts.inter(
                //                     fontWeight: FontWeight.w600, fontSize: 16)),
                //             SizedBox(height: 10),
                //             Text("Boost your mood with positive vibes",
                //                 style: GoogleFonts.inter(
                //                     fontWeight: FontWeight.w400, fontSize: 16)),
                //             SizedBox(height: 5),
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.start,
                //
                //               children: [
                //                 Container(
                //
                //                   decoration: BoxDecoration(
                //
                //                     color: Color(0xff32D583),
                //                     shape: BoxShape.circle
                //
                //                   ),
                //                   child: IconButton(
                //                     onPressed: () {},
                //                     icon: Icon(Icons.play_arrow),
                //                     color: Colors.white,
                //                     iconSize: 25,
                //
                //                   ),
                //                 ),
                //                 SizedBox(width: 10),
                //                 Text("10 mins",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,
                //                 fontWeight: FontWeight.w500),)
                //               ],
                //             )
                //           ],
                //         ),
                //       ),
                //       Expanded(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             Image(
                //                 image: AssetImage(
                //                     "assets/images/Walking the Dog.png"))
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
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
                icon: Icon(Icons.grid_view),
                label: "grid",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
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
