import 'package:animated_appbar/animated_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/widgets/Another_duplicate.dart';
import 'package:youth_care_application/events/widgets/SearchBox.dart';
import 'package:youth_care_application/events/widgets/duplicated_event_item.dart';
import 'package:youth_care_application/events/widgets/event_item.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class eventsView extends StatefulWidget {
  _AnimatedAppBarState createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<eventsView>
    with TickerProviderStateMixin {
  final TextEditingController stateController = TextEditingController();
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;



  final controller1 =
  PageController(viewportFraction: 0.9, keepPage: false, initialPage: 2);
  final _itemCount = 5;
  final colors = const [
    Colors.red,
    Colors.green,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.blue,
    Colors.amber,
  ];

  final trophyimage =
      'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/340855265_901212481106851_6082821086337358666_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=WKHLollLlzsAX8Kqw1Q&_nc_ht=scontent.fcai19-5.fna&oh=00_AfB76UlcV0iTBxGs7sxnxxZ8RXaMzCKt11jT1s7F_YGz4w&oe=643D3EA2';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: FractionallySizedBox(
                heightFactor: 1.0,
                widthFactor: 1.0,
                //for full screen set heightFactor: 1.0,widthFactor: 1.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/backgroundoriginal.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innnerBoxIsScrolled) {
                if (innnerBoxIsScrolled) {
                  /* Animation */
                  controller = AnimationController(
                    vsync: this,
                    duration: Duration(
                      seconds: 1,
                    ),
                  );
                  animation = Tween(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(controller);
                  /* Animation */
                  controller.forward();
                }
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 90.0,
                    floating: false,
                    pinned: true,
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    titleSpacing: 0.0,
                    toolbarHeight: (innnerBoxIsScrolled != null &&
                        innnerBoxIsScrolled == true)
                        ? 80.0
                        : 124.0,
                    centerTitle: false,
                    elevation: 0.0,
                    leadingWidth: 0.0,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (innnerBoxIsScrolled != null &&
                            innnerBoxIsScrolled == true)
                          FadeTransition(
                            opacity: animation,
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                SizedBox(
                                  height: 30.0,
                                ),
                                Row(

                                  children: const [
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      'events',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 29,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 22.0,
                                ),
                                Transform.translate(
                                  offset: const Offset(0.0, 35.0),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              // Image border
                              // Image radius

                              child: Image.asset(
                                'assest/o6u_png.png',
                                fit: BoxFit.cover,
                                scale: 4.5,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'OCTOBER 6 UNIVERSITY',
                              style: GoogleFonts.notoSans(
                                textStyle: TextStyle(
                                    color: Colors.white.withAlpha(240),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: Builder(
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                       /* SearchTextFormField(),
                        SizedBox(height: 10,),*/
                        SizedBox( //pagesssss
                          height: 240,
                          child: PageView.builder(
                            //   clipBehavior: Clip.none,
                            controller: controller1,
                            itemCount: _itemCount,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 5, right: 5),
                                child: Stack(

                                  textDirection:TextDirection.rtl ,
                                  children: [
                                    Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          /*boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 10.0, // soften the shadow
                                                spreadRadius: 2.0, //extend the shadow
                                                offset: Offset(
                                                  0.0, // Move to right 5  horizontally
                                                  5.0,
                                                ),
                                              ),
                                            ],*/
                                            color: primarycolor,
                                            borderRadius: BorderRadius.circular(10)),
                                        height: MediaQuery.of(context).size.height / 2.0,
                                        width: MediaQuery.of(context).size.width / 1.0,
                                        child:Image.asset('assest/sports5.jpg',fit: BoxFit.fill,)),
                                    /*Container(
                                      margin: EdgeInsets.only(bottom: 12,right: 4),
                                      alignment: Alignment.bottomCenter,

                                      child: Text(

                                        'توجت فرقة الجماعة كلية حسابات ببطولة التنس',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.notoSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              letterSpacing: .1,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),*/
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10,),
                        Transform.translate(
                          offset: const Offset(0.0, -25.0),

                          child: SmoothPageIndicator(
                              controller: controller1,
                              count: _itemCount,
                              effect: ScrollingDotsEffect(
                                  spacing: 10.0,
                                  radius: 6.0,
                                  dotWidth: 8.0,
                                  dotHeight: 7.0,
                                  paintStyle: PaintingStyle.fill,
                                  strokeWidth: 1.5,
                                  dotColor: Colors.white,
                                  activeDotColor: gradientColorA)),
                        ),
                        SizedBox(height: 10,),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20,),
                            Container(

                              child: Text(
                                'Events Highlight',
                                style: GoogleFonts.notoSans(
                                  textStyle: TextStyle(
                                      color: Colors.white.withAlpha(240),
                                      letterSpacing: .1,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        ListView.separated(
                          itemCount: 8,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return EventItem();
                          }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 2,); },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
