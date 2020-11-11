import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/NavButton.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:portfolio_website/widgets/SocialButton.dart';

class WebSite extends StatefulWidget {
  @override
  createState() => WebSiteState();
}

class WebSiteState extends State<WebSite> {
  AutoScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
  }

  Future _scrollToIndex() async {
    // print("doing");
    await _scrollController.scrollToIndex(1,
        preferPosition: AutoScrollPosition.begin);
    _scrollController.highlight(1);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
            controller: _scrollController,
            padding: EdgeInsets.zero,
            children: [
              AutoScrollTag(
                key: ValueKey(0),
                controller: _scrollController,
                index: 0,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: Colors.black,
                        child: Opacity(
                          opacity: 0.73,
                          child: Image.asset(
                            'lib/assets/4f2be60.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // width: double.infinity,
                        // height: screenSize.height,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            0.0,
                            screenSize.height / 40,
                            0.0,
                            screenSize.height / 6.25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                0.0,
                                screenSize.height / 60.0,
                                0.0,
                                // screenSize.width / 30.0,
                                screenSize.height / 30.0,
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    NavButton("Home"),
                                    NavButton("Experience"),
                                    NavButton("Skills"),
                                    NavButton("Resume"),
                                    NavButton("Contact"),
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width / 10),
                              child: Center(
                                child: Container(
                                  // width: screenSize.width*0.1,
                                  color: Color(0xbb000000),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: screenSize.height / 40),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 200.0,
                                          backgroundImage: AssetImage(
                                              'lib/assets/IMG_20190310_005942_560.jpg'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: screenSize.height / 50),
                                          child: Text("Hi, I'm Jeet Mehta",
                                              style: GoogleFonts.dancingScript(
                                                  color: Colors.white,
                                                  fontSize: 60.0)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenSize.height / 100,
                                              horizontal:
                                                  screenSize.width / 90),
                                          child: Text(
                                            "A Computer Science and Engineering undergraduate, with a passion for Development and Competitive Programming!",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: screenSize.height / 20),
                                          child: Row(
                                            // mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SocialButton(
                                                  FontAwesomeIcons.instagram,
                                                  'https://www.instagram.com/darr_ke_aage/'),
                                              SocialButton(
                                                  FontAwesomeIcons.linkedin,
                                                  'https://www.linkedin.com/in/jeetmehta13/'),
                                              SocialButton(
                                                  FontAwesomeIcons.facebook,
                                                  'https://www.facebook.com/penguinfromantarctic/'),
                                              SocialButton(
                                                  FontAwesomeIcons.github,
                                                  'https://github.com/jeetmehta13'),
                                              SocialButton(
                                                  FontAwesomeIcons.gitlab,
                                                  'https://gitlab.com/jeetsmehta13')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AutoScrollTag(
                key: ValueKey(1),
                controller: _scrollController,
                index: 1,
                child: Container(
                  height: 400,
                ),
              ),
            ]));
  }
}
