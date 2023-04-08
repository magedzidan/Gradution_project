import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/widgets/Another_duplicate.dart';
import 'package:youth_care_application/events/widgets/duplicated_event_item.dart';
import 'package:youth_care_application/events/widgets/event_item.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class eventsView extends StatelessWidget {
  final controller =
      PageController(viewportFraction: 0.9, keepPage: true, initialPage: 2);
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
      'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/336872916_1515929032229733_4482093524858898430_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=VgguiYLfxq4AX-m2KPa&_nc_ht=scontent.fcai19-5.fna&oh=00_AfAZH9_0LwfajfhiS8euSMmYaSQGB7vOWpRS9VQCaTMriA&oe=6436A6DB';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(60),
          //  color: Colors.grey.shade200,

          gradient: LinearGradient(
              colors: [
                gradientColorA,
                gradientColorB,
                gradientColorA,
                gradientColorB,
              ],
              stops: [
                0.2,
                0.3,
                0.5,
                0.4,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            /* leading:
            ClipRRect(
              clipBehavior: Clip.none,
              child: Transform.translate(

                offset: const Offset(15, 10),

                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assest/maged.jpg'),
                ),
              ),
            ),*/
            title: Padding(
              padding: const EdgeInsets.only(left: 6, top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage('https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/307180680_455904469905310_7052831461960350522_n.png?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=0NvSN_Ii440AX_5_pyI&_nc_ht=scontent.fcai19-5.fna&oh=00_AfAWTBJZHzoPN_TQPoZrsB47Dlh3vwSK6pcpGSXX0xa5LA&oe=643149FE'),
                  ),
                  SizedBox(width: 10,),
                  Text(

                    'October 6 Univeristy',
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                          shadows: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 2.0,
                          )],
                          color: Colors.grey[200],
                          letterSpacing: .1,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 30),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.grey[200],
                ),
              )
            ],
          ),
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 260),
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.height / 1.6,
              width: double.infinity,
              child: SingleChildScrollView(
                clipBehavior: Clip.none,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 240,
                      child: PageView.builder(
                        clipBehavior: Clip.none,
                        controller: controller,
                        itemCount: _itemCount,
                        itemBuilder: (_, index) {
                          return Transform.translate(
                            offset: const Offset(0, -140),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 0, left: 10, right: 10),
                              child: Stack(

                                textDirection:TextDirection.rtl ,
                                children: [
                                  Container(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 10.0, // soften the shadow
                                          spreadRadius: 2.0, //extend the shadow
                                          offset: Offset(
                                            0.0, // Move to right 5  horizontally
                                            5.0,
                                            ),
                                            ),
                                          ],
                                          color: primarycolor,
                                          borderRadius: BorderRadius.circular(20)),
                                      height: MediaQuery.of(context).size.height / 2.6,
                                      width: MediaQuery.of(context).size.width / 1.0,
                                      child: Image.network(
                                        trophyimage,
                                        fit: BoxFit.cover,
                                      )),
                                  Container(
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
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -140),
                      child: SmoothPageIndicator(
                          controller: controller,
                          count: _itemCount,
                          effect: ExpandingDotsEffect(
                              spacing: 8.0,
                              radius: 3.0,
                              dotWidth: 18.0,
                              dotHeight: 10.0,
                              paintStyle: PaintingStyle.fill,
                              strokeWidth: 1.5,
                              dotColor: Colors.grey,
                              activeDotColor: gradientColorA)),
                    ),
                    Transform.translate(
                      offset: const Offset(-50, -120),
                      child: Text(
                        'Our Latest Events',
                        style: GoogleFonts.notoSans(
                          textStyle: TextStyle(
                              color: secondrycolor,
                              letterSpacing: .1,
                              fontSize: 29,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        EventItem(),
                        SizedBox(height: 7,),
                        DuplicatedEventItem(),
                        SizedBox(height: 7,),
                        DuplicatedEventItem2(),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
