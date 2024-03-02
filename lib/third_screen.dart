import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chips_choice/chips_choice.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = "third";

  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int index = 0;
  List<String> tags = [];
  List<String> options = [
    'Discover',
    'News',
    'Most Viewed',
    'Saved',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            title: Row(
              children: [
                SizedBox(width: 40),
                ImageIcon(AssetImage("assets/images/ic3.png"),
                    color: Color(0xffC9B4FF)),
                SizedBox(width: 10),
                Text(
                  "AliceCare",
                  style: GoogleFonts.milonga(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Articles, Video, Audio and More,...",
                        prefixIcon: Icon(Icons.search, color: Color(0xff6941C6)),
                        contentPadding: EdgeInsets.zero,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff6941C6), width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1))),
                  ),
                  ChipsChoice.multiple(
                    value: tags,
                    onChanged: (val) => setState(() => tags = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    choiceStyle: C2ChipStyle.filled(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(25),
                      height: 40,
                      foregroundColor: Color(0xff667085),
                      foregroundStyle: TextStyle(
                        fontSize: 17,
                      ),
                      selectedStyle: C2ChipStyle(
                        backgroundColor: Color(0xffD6BBFB),
                        foregroundColor: Color(0xff6941C6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hot topics",
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          color: Color(0xff5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xff5925DC), size: 15),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 326,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image(
                                      image: AssetImage("assets/images/p3.png"),
                                      height: 160,
                                      width: 326,
                                      fit: BoxFit.fill)),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.2),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xffFEF0C7)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)))),
                                      child: Text("self-care",
                                          style: GoogleFonts.inter(
                                              color: Color(0xff93370D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Text(
                                        "10 Easy Self-Care Ideas That Can Help Boost Your Health",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 326,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/how-to-take-care-of-yourself.png"),
                                      height: 160,
                                      width: 326,
                                      fit: BoxFit.fill)),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.2),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xffFEE4E2)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)))),
                                      child: Text("cycle",
                                          style: GoogleFonts.inter(
                                              color: Color(0xff93370D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Text(
                                        "How to take care of Menstrual Hygiene during Menstrual Cycle",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Get Tips",
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/Doctor-PNG-Images 1.png")),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Connect with doctors & get suggestions",
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 10,),

                              Text(
                                "Connect now and get expert insights ",
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 20,),
                              ElevatedButton(onPressed: (){},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(Color(0xff7F56D9),
                                    ),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                    padding: MaterialStatePropertyAll(EdgeInsets.all(12))
                                  ),
                                  child: Text
                                ("View detail",style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),))


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Cycle Phases and Period",
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          color: Color(0xff5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xff5925DC), size: 15),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff7F56D9),
            unselectedItemColor: Colors.grey,
            elevation: 0,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            iconSize: 30,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: "Today",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_sharp),
                label: "Insights",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: "Chat",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
