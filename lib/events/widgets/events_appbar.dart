import 'package:animated_appbar/animated_appbar.dart';
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
class _AnimatedAppBarState extends State<AnimatedAppBar>
    with TickerProviderStateMixin {
  final TextEditingController stateController = TextEditingController();
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
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
                expandedHeight: 120.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.blueGrey,
                automaticallyImplyLeading: false,
                titleSpacing: 0.0,
                toolbarHeight:
                (innnerBoxIsScrolled != null && innnerBoxIsScrolled == true)
                    ? 60.0
                    : 160.0,
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
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "All Notes",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                ),
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
                          height: 30.0,
                        ),
                        Text(
                          "All Notes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          "2 Notes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                            Spacer(),
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            ),
                          ],
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
                    ListView.builder(
                      itemCount: 100,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Index value: $index"),
                        );
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}