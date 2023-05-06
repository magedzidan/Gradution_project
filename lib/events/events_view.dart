import 'package:animated_appbar/animated_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/events_controller.dart';
import 'package:youth_care_application/events/eventsdetails.dart';
import 'package:youth_care_application/events/widgets/Another_duplicate.dart';
import 'package:youth_care_application/events/widgets/SearchBox.dart';
import 'package:youth_care_application/events/widgets/duplicated_event_item.dart';
import 'package:youth_care_application/events/widgets/event_item.dart';
import 'package:youth_care_application/events/widgets/text_style_event.dart';
import 'package:youth_care_application/events/widgets/time_page_details.dart';
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
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
/*
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
*/
                Image.asset(
                    'assest/sports5.jpg', fit: BoxFit.cover, width: 1000.0),

                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${imgList.indexOf(item)} image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();
    return GetBuilder<EventsController>(builder: (controllere)=>controllere.loading.value?Center(child: CircularProgressIndicator()):
    SafeArea(
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
                                  offset: const Offset(5.0, 40.0),
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
                        SizedBox(
                          height: 0,
                        ),
                        /* SearchTextFormField(),
                        SizedBox(height: 10,),*/
                        SizedBox(
                          //pagesssss
                          height: 300,
                          child: Container(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  aspectRatio: 1.5,
                                  viewportFraction: 0.9,
                                  enlargeCenterPage: true,
                                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                                  initialPage: 2,
                                  autoPlay: true,
                                ),
                                items: imageSliders,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      /*  Transform.translate(
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
                                  dotColor: Colors.white.withAlpha(220),
                                  activeDotColor: gradientColorA)),
                        ),*/
                        SizedBox(
                          height: 00,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
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
                        SizedBox(
                          height: 20,
                        ),
                        _ListEvents()
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    )
    );
  }

  Widget _ListEvents() {
    return GetBuilder<EventsController>(
        builder: (controllere) => ListView.separated(
              itemCount: controllere.eventsModel.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Get.to(()=>EventDetailPage(
                      model:controllere.eventsModel[index]
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white24, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              //clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(

                                margin: EdgeInsets.symmetric(horizontal: 00),
                                padding: EdgeInsets.only(left: 00),
                                height: MediaQuery.of(context).size.height / 9.3,
                                width: 115,

                                child: Image.network(
                                  controllere.eventsModel[index].urlToImage as String,
                                  fit: BoxFit.fill,
                                ),
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(DateTimeUtils.getalldate(controllere.eventsModel[index].date as DateTime ), style: monthStyle),
                                SizedBox(height: 5),
                                Text(controllere.eventsModel[index].title,   maxLines: 2,
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis, style:GoogleFonts.notoSans(textStyle:titleStyle ) )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 15,
                  color: Colors.transparent,
                );
              },
            ));
  }
}
