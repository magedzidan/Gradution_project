import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/screen_control_indcator.dart';

class TournamentView extends StatelessWidget {
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
            ],
            /*stops: [
                0.2,
                0.2,
                0.1,
                0.2,
              ],*/
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Padding(
            padding:
                const EdgeInsets.only(top: 38, right: 15, left: 15, bottom: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Card(

                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[40],

                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        visualDensity: VisualDensity(vertical: 4), // to expand
                        leading: Icon(
                          Icons.sports_soccer_rounded,
                          size: 40,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text('Today,10/02'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Icon(Icons.access_time_filled_outlined),
                              SizedBox(
                                width: 7,
                              ),
                              Text('04:00 pm')
                            ]),
                          ],
                        ),
                        trailing: Container(

                          margin: EdgeInsets.only(top: 27,left: 1),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(1)
                          ),
                          child: Text(
                            'Join us',
                            style: TextStyle(fontSize: 17,color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
